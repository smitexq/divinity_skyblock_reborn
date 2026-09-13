#Координаты концов отрезка
$execute store result score #temp2 gen run data get storage dsb_gen:values Circle.CornerCoords[$(Number)][$(coord)]
$execute store result score #maxCount gen run data get storage dsb_gen:values Circle.CornerCoords[$(PairCoord)][$(coord)]
#Переводим в чанки
scoreboard players operation #temp2 gen /= #16 gen
scoreboard players operation #maxCount gen /= #16 gen
#Количество
scoreboard players operation #maxCount gen -= #temp2 gen

execute if score #maxCount gen matches ..-1 run scoreboard players operation #maxCount gen *= #-1 gen
#Кол-во чанков: конец - начало + 1
execute store result storage dsb_gen:values Circle.maxCount int 1 run scoreboard players add #maxCount gen 1