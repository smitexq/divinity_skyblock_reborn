#Поворот стойки для брони в сторону балкона
execute as @e[type=armor_stand, tag=SOA_Camera1] at @s run rotate @s facing entity @e[type=minecraft:marker, tag=SOA_Rotation1, limit=1] feet

#Через 0.5 секунд помечаем камеру как активную, чтобы игрок к ней телепортиролвася
function dc:get_call {tick:10, command:"tag @e[type=minecraft:armor_stand, tag=SOA_Camera1, limit=1] add ActualCamera", requirePos:true, requireEntity:false}

#Отмена передвижение стойки для брони
execute as @e[type=armor_stand, tag=SOA_Camera1] at @s run function dc:get_call {tick:120, command:"tag @s add cancel", requirePos:false, requireEntity:true}