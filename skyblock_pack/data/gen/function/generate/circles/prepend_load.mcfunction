#Количество точек /4 узнаем сколько отрезков в одной линии на данный момент. Потом текущий номер отрезка делим на количество в одной линии
#Это и будет номер смещения в нашем списке Steps
scoreboard players operation #temp gen = #countPoints gen
scoreboard players operation #temp gen /= #4 gen
scoreboard players operation #numOfOffset gen = #num gen
execute store result storage dsb_gen:values Circle.NumOffset int 1 run scoreboard players operation #numOfOffset gen /= #temp gen


###Берем 2 соседние координаты (отрезок), чтобы прогрузить
scoreboard players operation #num2 gen = #num gen
execute store result storage dsb_gen:values Circle.PairCoord int 1 run scoreboard players add #num2 gen 1
execute if score #num2 gen = #countPoints gen store result storage dsb_gen:values Circle.PairCoord int 1 run scoreboard players set #num2 gen 0
#Прогрузка
function gen:generate/circles/prepend_forceload with storage dsb_gen:values Circle

###Шаг, номер прогружаемого чанка
scoreboard players set #step gen 0
#начальная позиция проверки
$execute positioned $(x) ~ $(z) run function gen:generate/circles/loop with storage dsb_gen:values Circle
