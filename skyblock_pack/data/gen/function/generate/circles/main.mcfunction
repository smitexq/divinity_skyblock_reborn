#Индекс последней точки в списке
scoreboard players operation #lastIndex gen = #countPoints gen
scoreboard players remove #lastIndex gen 1

$data modify storage dsb_gen:values Circle.x set from storage dsb_gen:values Circle.CornerCoords[$(Number)][0]
$data modify storage dsb_gen:values Circle.z set from storage dsb_gen:values Circle.CornerCoords[$(Number)][1]
#Подготовка к прогрузке
function gen:generate/circles/prepend_load with storage dsb_gen:values Circle

execute store result storage dsb_gen:values Circle.Number int 1 run scoreboard players add #num gen 1

#Пока мы не закончили прогружать рамку
#До 20 рамки без задержек
execute if score #squareNum gen matches ..20 if score #num gen <= #lastIndex gen run return run function gen:generate/circles/main with storage dsb_gen:values Circle
#После 20 рамки задержка в один тик
execute if score #squareNum gen matches ..90 if score #num gen <= #lastIndex gen run return run schedule function gen:generate/circles/tools/shedule_main 1t
execute if score #squareNum gen matches ..120 if score #num gen <= #lastIndex gen run return run function gen:generate/circles/over_100_frame



###подготовка к переходу на следующую рамку
execute store result storage dsb_gen:values Circle.Number int 1 run scoreboard players set #num gen 0

#Острова
execute if score #squareNum gen matches 120 run function gen:generate/circles/tools/preset_less120
function gen:islands/preset

##Увеличиваем углы чанков и выставляем новые точки (если нужно)
scoreboard players add #squareNum gen 1
scoreboard players operation squareNum gen = #squareNum gen

execute if score #squareNum gen matches ..20 run function gen:generate/circles/tools/preset_less20
execute if score #squareNum gen matches 21..40 run function gen:generate/circles/tools/preset_less40
execute if score #squareNum gen matches 41..60 run function gen:generate/circles/tools/preset_less60
execute if score #squareNum gen matches 61..80 run function gen:generate/circles/tools/preset_less80
execute if score #squareNum gen matches 81..100 run function gen:generate/circles/tools/preset_less100
execute if score #squareNum gen matches 101..120 run function gen:generate/circles/tools/preset_less120

#Если это была последняя рамка, то заканчиваем
execute if score #squareNum gen matches 121 run return run function gen:islands/on_biome/quests/after_all

#Задержка перед следующей рамкой
schedule function gen:generate/circles/shedule_main 4t
