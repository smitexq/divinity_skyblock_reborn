$tag @s add $(out)
tag @s add driver

#Проверка на то, что игрок вышел из лодки
$execute as $(out) run function dc:get_call {tick:10, command:"function dsb:constructions/flying_boat/check_if_dismount {out:$(out)}", requirePos:false, requireEntity:true}
#Частицы
function dc:get_call {tick:20, command:"function dsb:constructions/flying_boat/on_boat/particle", requirePos:false, requireEntity:true}