tag @s remove DecideTask

#Очищаем функцию ожидания ответа
function dc:gu/generate
data modify storage dsb:dc_remove temp.UUID set from storage gu:main out
$data modify storage dsb:dc_remove temp.command set value "function dsb:events/library_tasks/get_excepted {key:$(key)}"
function dc:clear_schedule with storage dsb:dc_remove temp

#Не успел по времени
execute if score @s TaskAnswer matches -2147483648 run return run function dsb:events/library_tasks/result/fail {cause:time}
#Неправильный ответ
$execute unless score @s TaskAnswer matches $(key) run return run function dsb:events/library_tasks/result/fail {cause:incorrect}

###Решил верно
function dsb:events/library_tasks/result/success