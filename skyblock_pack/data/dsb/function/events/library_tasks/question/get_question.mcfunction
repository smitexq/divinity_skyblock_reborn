data modify storage dsb:library_tasks Task set value {orderAns:["","",""], trigger:[-1,-1,-1]}

#uuid игрока для записи ключа
data modify storage dsb:library_tasks Task.UUID set from storage gu:main out

$data modify storage dsb:library_tasks Task.outputKeys.num set from storage dsb:temp temp[$(index)].questionNum
$data modify storage dsb:library_tasks Task.orderAns set from storage dsb:temp temp[$(index)].answers
$data modify storage dsb:library_tasks Task.ans set from storage dsb:temp temp[$(index)].ans
execute store result storage dsb:library_tasks Task.ansKey int 1 run random value 0..2147483645 dsb:library/get_key

###Через определенное время проверяем значение ключа (ответ)
execute store result storage dsb:library_tasks Task.time int 1 run random value 400..600 dsb:library_tasks/get_time
function dsb:events/library_tasks/delay_answer with storage dsb:library_tasks Task

#При помощи insert вставим на случайное место ответ
execute store result storage dsb:temp index int 1 run random value 0..3 dsb:library/random_index
function dsb:events/library_tasks/example/put_correct_answer with storage dsb:temp

#Переделываем ключи в compound
data modify storage dsb:library_tasks Task.outputKeys.key0 set from storage dsb:library_tasks Task.trigger[0]
data modify storage dsb:library_tasks Task.outputKeys.key1 set from storage dsb:library_tasks Task.trigger[1]
data modify storage dsb:library_tasks Task.outputKeys.key2 set from storage dsb:library_tasks Task.trigger[2]
data modify storage dsb:library_tasks Task.outputKeys.key3 set from storage dsb:library_tasks Task.trigger[3]

#Вставляем вопросы как compound
data modify storage dsb:library_tasks Task.outputKeys.que0 set from storage dsb:library_tasks Task.orderAns[0]
data modify storage dsb:library_tasks Task.outputKeys.que1 set from storage dsb:library_tasks Task.orderAns[1]
data modify storage dsb:library_tasks Task.outputKeys.que2 set from storage dsb:library_tasks Task.orderAns[2]
data modify storage dsb:library_tasks Task.outputKeys.que3 set from storage dsb:library_tasks Task.orderAns[3]


#tellraw
function dsb:events/library_tasks/question/tellraw with storage dsb:library_tasks Task.outputKeys

data remove storage dsb:library_tasks Task