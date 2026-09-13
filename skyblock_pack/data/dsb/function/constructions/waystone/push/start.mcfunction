advancement revoke @s only dsb:interactions/with_waystone_push

#Получае uuid и удаляем тег ЛКМ
execute as @e[type=minecraft:interaction,tag=initWaystone,nbt={attack:{}}] run function food:cauldron/action/get_uuid {nbt: "attack"}

#В руке должен быть Связанный кристалл
execute unless items entity @s weapon.mainhand minecraft:structure_block[minecraft:custom_data~{link:true}] run return run title @s actionbar {"translate":"dsb.events.waystone.link_fail.no_shard","color":"red"}

#Проверяем, если uuid линка совпадает с uuid вейстоуна, то ошибка
data modify storage dsb:temp waystone set value {}
data modify storage dsb:temp waystone.this_uuid set from storage gu:main out
data modify storage dsb:temp waystone.uuid_link set from entity @s SelectedItem.components."minecraft:custom_data".link_uuid
execute store result score *var1 variables run function dsb:constructions/waystone/push/check_uuid with storage dsb:temp waystone
execute if score *var1 variables matches 0 run return run title @s actionbar {"translate":"dsb.events.waystone.link_fail.same","color":"red"}

#Определяем существует ли до сих сущность для связи, если нет, то очищаем линк
execute store result score *var1 variables run function dsb:constructions/waystone/push/check_exist_waystone with storage dsb:temp waystone
execute if score *var1 variables matches 0 run function dsb:constructions/waystone/target/remove_link
execute if score *var1 variables matches 0 run return run title @s actionbar {"translate":"dsb.events.waystone.link_fail.no_exist","color":"red"}

function dc:gu/generate
data modify storage dsb:temp waystone.PLuuid set from storage gu:main out
#Проверяем есть ли линк на сущности
function dsb:constructions/waystone/push/on_linker/main with storage dsb:temp waystone