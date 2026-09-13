data modify storage dsb:library_tasks Task set value {orderAns:[0,0,0,0], trigger:[-1,-1,-1,-1]}

#uuid игрока для записи ключа
data modify storage dsb:library_tasks Task.UUID set from storage gu:main out

#3 случайных значения
execute store result score #x variables run random value -5000..5000 dsb:library/task/value/x
execute store result score #y variables run random value -5000..5000 dsb:library/task/value/y
execute store result score #z variables run random value -5000..5000 dsb:library/task/value/z

#Сумма
scoreboard players set #result variables 0
scoreboard players operation #result variables += #x variables
scoreboard players operation #result variables += #y variables
execute store result storage dsb:library_tasks Task.ans int 1 run scoreboard players operation #result variables += #z variables
execute store result storage dsb:library_tasks Task.ansKey int 1 run random value 0..2147483645 dsb:library/get_key

###Через определенное время проверяем значение ключа (ответ)
execute store result storage dsb:library_tasks Task.time int 1 run random value 600..700 dsb:library_tasks/get_time
function dsb:events/library_tasks/delay_answer with storage dsb:library_tasks Task

###Определяем дельту для каждого варианта ответа
execute store result score *var1 variables run random value -50..50 dsb:library/task/delta
execute store result storage dsb:library_tasks Task.orderAns[0] int 1 run scoreboard players operation *var1 variables += #result variables

execute store result score *var1 variables run random value -50..50 dsb:library/task/delta
execute store result storage dsb:library_tasks Task.orderAns[1] int 1 run scoreboard players operation *var1 variables += #result variables

execute store result score *var1 variables run random value -50..50 dsb:library/task/delta
execute store result storage dsb:library_tasks Task.orderAns[2] int 1 run scoreboard players operation *var1 variables += #result variables

execute store result score *var1 variables run random value -50..50 dsb:library/task/delta
execute store result storage dsb:library_tasks Task.orderAns[3] int 1 run scoreboard players operation *var1 variables += #result variables
###
#При помощи insert вставим на случайное место ответ
execute store result storage dsb:temp index int 1 run random value 0..4 dsb:library/random_index
function dsb:events/library_tasks/example/put_correct_answer with storage dsb:temp

#Переделываем ключи в compound
data modify storage dsb:library_tasks Task.outputKeys.key0 set from storage dsb:library_tasks Task.trigger[0]
data modify storage dsb:library_tasks Task.outputKeys.key1 set from storage dsb:library_tasks Task.trigger[1]
data modify storage dsb:library_tasks Task.outputKeys.key2 set from storage dsb:library_tasks Task.trigger[2]
data modify storage dsb:library_tasks Task.outputKeys.key3 set from storage dsb:library_tasks Task.trigger[3]
data modify storage dsb:library_tasks Task.outputKeys.key4 set from storage dsb:library_tasks Task.trigger[4]

#Выводим tellraw
function dsb:events/library_tasks/example/type_1/tellraw with storage dsb:library_tasks Task.outputKeys
#Очистка, чтобы нельзя было узнать ключ
data remove storage dsb:library_tasks Task