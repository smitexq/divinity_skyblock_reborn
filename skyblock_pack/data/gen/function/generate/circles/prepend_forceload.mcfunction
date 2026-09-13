#Координаты для прогрузки отрезка
$data modify storage dsb_gen:values Circle.ForceLoad.x1 set from storage dsb_gen:values Circle.CornerCoords[$(Number)][0]
$data modify storage dsb_gen:values Circle.ForceLoad.z1 set from storage dsb_gen:values Circle.CornerCoords[$(Number)][1]

$data modify storage dsb_gen:values Circle.ForceLoad.x2 set from storage dsb_gen:values Circle.CornerCoords[$(PairCoord)][0]
$data modify storage dsb_gen:values Circle.ForceLoad.z2 set from storage dsb_gen:values Circle.CornerCoords[$(PairCoord)][1]

function gen:add_forceload with storage dsb_gen:values Circle.ForceLoad


###Узнаем количество чанков в прогрeужаемом отрезке
#Остаток от деления показывает двигаемся по Z или по X
scoreboard players operation #numOfOffset gen %= #2 gen
#В зависимости от того, двигаем по X или Z, то кол-во чанков (длина отрезка) будем искать по разным координатам
$execute if score #numOfOffset gen matches 0 run function gen:generate/circles/tools/get_distance {Number: $(Number), PairCoord: $(PairCoord), coord: 0}
$execute if score #numOfOffset gen matches 1 run function gen:generate/circles/tools/get_distance {Number: $(Number), PairCoord: $(PairCoord), coord: 1}
###

#В какую сторону будет сдвиг
$data modify storage dsb_gen:values Circle.offset set from storage dsb_gen:values Circle.Steps[$(NumOffset)]