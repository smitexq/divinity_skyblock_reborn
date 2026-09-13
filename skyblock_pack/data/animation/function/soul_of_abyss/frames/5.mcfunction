#Удаляем все активные камеры
tag @e remove ActualCamera

#поворот камеры в точку
execute as @e[type=armor_stand, tag=SOA_Camera5] at @s run rotate @s facing entity @e[type=minecraft:marker, tag=SOA_Rotation5, limit=1] feet
tag @e[type=armor_stand, tag=SOA_Camera5] add initMotion

#Пометка камеры как активной (к ней телепортируется игрок)
function dc:get_call {tick:5, command:"tag @e[type=minecraft:armor_stand, tag=SOA_Camera5, limit=1] add ActualCamera", requirePos:true, requireEntity:false}