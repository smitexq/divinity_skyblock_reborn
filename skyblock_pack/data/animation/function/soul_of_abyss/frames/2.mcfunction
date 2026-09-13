#Удаляем все активные камеры
tag @e remove ActualCamera

#Телепортируем взгляд камеры на монумент лица пиглина
data modify entity @e[type=item_display, tag=SOA_Camera2, limit=1] teleport_duration set value 0
execute as @e[type=item_display, tag=SOA_Camera2] at @s run function dc:get_call {tick:1, command:"rotate @s facing entity @e[type=minecraft:marker, tag=SOA_Rotation2, limit=1] feet", requirePos:false, requireEntity:true}
#обратно выставляем время телепортации 59 тиков
execute as @e[type=item_display, tag=SOA_Camera2] at @s run function dc:get_call {tick:2, command:"data modify entity @s teleport_duration set value 59", requirePos:false, requireEntity:true}


#Поворот конечной точки камеры на монумент
execute as @e[type=armor_stand, tag=SOA_Camera2_end] at @s run rotate @s facing entity @e[type=minecraft:marker, tag=SOA_Rotation2, limit=1] feet

#начало телепортации
function dc:get_call {tick:5, command:"tp @e[type=minecraft:item_display, tag=SOA_Camera2, limit=1] @e[type=armor_stand, tag=SOA_Camera2_end, limit=1]", requirePos:true, requireEntity:false}
#Пометка камеры как активной (к ней телепортируется игрок)
function dc:get_call {tick:7, command:"tag @e[type=minecraft:item_display, tag=SOA_Camera2, limit=1] add ActualCamera", requirePos:true, requireEntity:false}