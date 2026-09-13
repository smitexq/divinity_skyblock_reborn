#Если лежит 2 предмета, то сразу юзается второй, значит достижение забираем не сразу
function dc:get_call {tick:10, command:"advancement revoke @s only dsb:events/use/lighting_charge", requirePos:false, requireEntity:true}

execute if entity @s[tag=ReloadLightning_charge] run return run title @s actionbar {"translate":"dsb.events.lighting_bolt_cooldown","color":"gold"}

#Перезарядка
tag @s add ReloadLightning_charge
function dc:get_call {tick:600, command:"tag @s remove ReloadLightning_charge", requirePos:false, requireEntity:true}

#рейкаст
scoreboard players reset @s RecursionDepth
execute anchored eyes positioned ^ ^ ^1 run function dsb:events/lighting_charge/loop

#Убираем предмет
execute if items entity @s weapon.mainhand minecraft:structure_block[minecraft:custom_data={id:"lightning_charge"}] run return run item modify entity @s weapon.mainhand food:remove_item
execute if items entity @s weapon.offhand minecraft:structure_block[minecraft:custom_data={id:"lightning_charge"}] run return run item modify entity @s weapon.offhand food:remove_item