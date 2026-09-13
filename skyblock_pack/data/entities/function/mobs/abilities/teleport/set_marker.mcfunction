#Звук исчезновения мышей + телепорт моба
$execute as $(out) run function dc:get_call {tick:50, command:"playsound minecraft:item.ink_sac.use ambient @a ~ ~ ~ 1 2", requirePos:true, requireEntity:true}
$execute as $(out) run function dc:get_call {tick:80, command:"function entities:mobs/abilities/teleport/end {out:$(out)}", requirePos:false, requireEntity:true}


#Рандомная позиция
# spreadplayers ~ ~ 1 15 false @s
###Распределение с учетом высоты
function entities:mobs/abilities/api/spreadplayers/store_height
data modify storage dsb:temp spreadplayers.range set value "1 15"
data modify storage dsb:temp spreadplayers.target set value "@s"
function entities:mobs/abilities/api/spreadplayers/under_height with storage dsb:temp spreadplayers
###

#Тег моба на маркере
tag @s add use.teleport
data modify entity @s Tags append from storage gu:main out