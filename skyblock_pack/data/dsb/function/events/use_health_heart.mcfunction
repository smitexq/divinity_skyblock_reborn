advancement grant @s only dsb:skyblock/travel/heart

#Кулдаун
function dc:get_call {tick:40, command:"advancement revoke @s only dsb:events/use/heart", requirePos:false, requireEntity:true}

#Если превысили лимит
execute store result score *var1 variables run attribute @s minecraft:max_health base get 10
execute if score *var1 variables matches 300.. run return run tellraw @s {"translate":"dsb.events.use_health_heart.fail", "color":"red"}

playsound minecraft:entity.experience_orb.pickup ambient @s
tellraw @s {"translate":"dsb.events.use_health_heart.success", "color":"green"}

#Добавляем хп
execute store result score *var1 variables run attribute @s minecraft:max_health base get
execute store result storage dsb:temp health int 1 run scoreboard players add *var1 variables 1
function dsb:events/add_health with storage dsb:temp

#Убираем предмет
execute if items entity @s weapon.mainhand minecraft:structure_block[minecraft:custom_data={id:"health_heart"}] run return run item modify entity @s weapon.mainhand food:remove_item
execute if items entity @s weapon.offhand minecraft:structure_block[minecraft:custom_data={id:"health_heart"}] run return run item modify entity @s weapon.offhand food:remove_item