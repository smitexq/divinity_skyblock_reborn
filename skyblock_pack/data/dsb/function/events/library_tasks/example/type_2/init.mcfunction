data modify storage dsb:library_tasks Task set value {orderAns:[0f,0f,0f,0f], trigger:[-1,-1,-1,-1]}

#uuid игрока для записи ключа
data modify storage dsb:library_tasks Task.UUID set from storage gu:main out

#4 случайных значения
function dsb:events/library_tasks/example/type_2/set_values

###ответ
scoreboard players set #100 variables 100
#c-a
scoreboard players operation #result variables = #c variables
scoreboard players operation #result variables -= #a variables
scoreboard players operation #result variables *= #100 variables
#b-z
scoreboard players operation *var2 variables = #b variables
scoreboard players operation *var2 variables -= #z variables
#c-a/b-z
execute store result storage dsb:library_tasks Task.ans float 0.01 run scoreboard players operation #result variables /= *var2 variables
execute store result storage dsb:library_tasks Task.ans float 0.01 run data get storage dsb:library_tasks Task.ans 100
execute store result storage dsb:library_tasks Task.ansKey int 1 run random value 0..2147483645 dsb:library/get_key
###

###Через определенное время проверяем значение ключа (ответ)
execute store result storage dsb:library_tasks Task.time int 1 run random value 600..700 dsb:library_tasks/get_time
function dsb:events/library_tasks/delay_answer with storage dsb:library_tasks Task

###Определяем дельту для каждого варианта ответа
execute store result score *var1 variables run random value -100..100 dsb:library/task/delta
execute store result storage dsb:library_tasks Task.orderAns[0] float 0.01 run scoreboard players operation *var1 variables += #result variables
execute store result storage dsb:library_tasks Task.orderAns[0] float 0.01 run data get storage dsb:library_tasks Task.orderAns[0] 100

execute store result score *var1 variables run random value -100..100 dsb:library/task/delta
execute store result storage dsb:library_tasks Task.orderAns[1] float 0.01 run scoreboard players operation *var1 variables += #result variables
execute store result storage dsb:library_tasks Task.orderAns[1] float 0.01 run data get storage dsb:library_tasks Task.orderAns[1] 100

execute store result score *var1 variables run random value -100..100 dsb:library/task/delta
execute store result storage dsb:library_tasks Task.orderAns[2] float 0.01 run scoreboard players operation *var1 variables += #result variables
execute store result storage dsb:library_tasks Task.orderAns[2] float 0.01 run data get storage dsb:library_tasks Task.orderAns[2] 100

execute store result score *var1 variables run random value -100..100 dsb:library/task/delta
execute store result storage dsb:library_tasks Task.orderAns[3] float 0.01 run scoreboard players operation *var1 variables += #result variables
execute store result storage dsb:library_tasks Task.orderAns[3] float 0.01 run data get storage dsb:library_tasks Task.orderAns[3] 100
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

#Убираем в конце f (float)
data modify storage dsb:temp temp set from storage dsb:library_tasks Task.orderAns
data modify storage dsb:library_tasks Task.orderAns set value []
data modify storage dsb:library_tasks Task.orderAns append string storage dsb:temp temp[] 0 -1

#Выводим tellraw
function dsb:events/library_tasks/example/type_2/tellraw with storage dsb:library_tasks Task.outputKeys
#Очистка, чтобы нельзя было узнать ключ
data remove storage dsb:library_tasks Task