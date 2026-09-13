#Область
execute as @a[distance=..20] at @s run playsound minecraft:item.trident.throw ambient @s

#Выстрел
function dc:get_call {tick:15, command:"execute as @a[distance=..20] at @s run playsound minecraft:block.beacon.deactivate ambient @s ~ ~ ~ 1 2", requirePos:true, requireEntity:false}
function dc:get_call {tick:15, command:"execute as @a[distance=..20] at @s run playsound minecraft:entity.wither.shoot ambient @s ~ ~ ~ 0.3", requirePos:true, requireEntity:false}