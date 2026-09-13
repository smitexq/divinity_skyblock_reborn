advancement revoke @s only dsb:interactions/with_waystone_target

###Получае uuid, удаляем тег ПКМ
execute as @e[type=minecraft:interaction,tag=initWaystone,nbt={interaction:{}}] run function food:cauldron/action/get_uuid {nbt: "interaction"}

#Если в руке нет кристалла
execute unless predicate dsb:events/waystone_item_action run return run title @s actionbar {"translate":"dsb.events.waystone.not_hold_crystal","color":"red"}

#Если эндер перл, то возможно телепорт (проверить есть ли линк у вейстоуна)
execute if items entity @s weapon.mainhand minecraft:ender_pearl run return run function dsb:constructions/waystone/target/ender_pearl with storage gu:main
#Если кристалл без связи, то установить связь
execute unless items entity @s weapon.mainhand minecraft:structure_block[minecraft:custom_data~{link:true}] run return run function dsb:constructions/waystone/target/set_link with storage gu:main
#Если на шифте и есть связанный кристалл, то очистить свзяь
execute if predicate dsb:events/is_sneaking if items entity @s weapon.mainhand minecraft:structure_block[minecraft:custom_data~{link:true}] run return run function dsb:constructions/waystone/target/remove_link with storage gu:main