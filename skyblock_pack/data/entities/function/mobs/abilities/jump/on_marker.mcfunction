#Случайная телепортация на поверхность
# spreadplayers ~ ~ 1 5 false @s

###Распределение с учетом высоты
function entities:mobs/abilities/api/spreadplayers/store_height
data modify storage dsb:temp spreadplayers.range set value "1 5"
data modify storage dsb:temp spreadplayers.target set value "@s"
function entities:mobs/abilities/api/spreadplayers/under_height with storage dsb:temp spreadplayers
###

#Воспроизведение частиц через 12 тиков
$function dc:get_call {tick:12, command:"function entities:mobs/abilities/jump/particle {mob:$(mob)}", requirePos:false, requireEntity:true}