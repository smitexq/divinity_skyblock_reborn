#Если лежит 2 предмета, то сразу юзается второй, значит достижение забираем не сразу
function dc:get_call {tick:10, command:"advancement revoke @s only dsb:events/use/scroll_of_mending_2", requirePos:false, requireEntity:true}

#Свиток во второй руке
execute unless items entity @s weapon.mainhand minecraft:structure_block[minecraft:custom_data={id:"scroll_of_mending_2"}] run return run title @s actionbar {"translate":"dsb.events.scroll_of_mending_fail","color":"gold"}

#Предмет в основной
execute unless items entity @s weapon.offhand * run return run title @s actionbar {"translate":"dsb.events.scroll_of_mending_fail_mainhand","color":"gold"}

#Убираем один свиток
item modify entity @s weapon.mainhand food:remove_item
#Чиним предмет
item modify entity @s weapon.offhand {"function": "minecraft:set_damage", "damage": 0.2, "add": true}
playsound minecraft:block.anvil.use ambient @s
particle minecraft:totem_of_undying ~ ~1 ~ 0.8 0.8 0.8 0 8