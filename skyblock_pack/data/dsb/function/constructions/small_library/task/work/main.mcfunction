#Определяем время для следующего вопроса
data modify storage dsb:cts Temp set value {}

###Рассчитываем время для следующего задания с учетом томов (10 секунд = 200 тиков)
execute store result score *var1 variables run random value 1100..3200 dsb:get_time_for_l.task
scoreboard players set *var2 variables 200
scoreboard players operation *var2 variables *= @s library.tome_of_rune
scoreboard players operation *var1 variables -= *var2 variables
#если меньше 20 секунд
execute unless score *var1 variables matches 400.. run scoreboard players set *var1 variables 400
execute store result storage dsb:cts Temp.time int 1 run scoreboard players get *var1 variables
###
function dsb:constructions/small_library/task/work/delay with storage dsb:cts Temp


#Если нет игроков, то ничего не делаем
execute unless entity @p[distance=..3] run return 0

###Иначе берем случайную точку из доступных
function dc:gu/generate
data modify storage dsb:cts Temp.UUID set from storage gu:main out
#Кол-во точек
function dsb:constructions/small_library/task/work/get_len with storage dsb:cts Temp
function dsb:constructions/small_library/task/work/get_random with storage dsb:cts Temp
#Берем случайную точку
function dsb:constructions/small_library/task/work/get_pos with storage dsb:cts Temp
###

#Призываем интерактив и сразу меняем ему nbt
execute summon interaction run function dsb:constructions/small_library/task/work/spawn_task with storage dsb:cts Temp