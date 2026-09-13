# execute at @p run spreadplayers ~ ~ 1 7 false @s

###Распределение с учетом высоты
execute as @p run function entities:mobs/abilities/api/spreadplayers/store_height
data modify storage dsb:temp spreadplayers.range set value "1 7"
data modify storage dsb:temp spreadplayers.target set value "@s"
function entities:mobs/abilities/api/spreadplayers/under_height with storage dsb:temp spreadplayers
###