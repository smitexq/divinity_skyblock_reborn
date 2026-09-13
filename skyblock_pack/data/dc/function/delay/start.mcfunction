#Записываем текущее игровое время
data modify storage dsb:dc temp set value {}
execute store result storage dsb:dc temp.time int 1 run time query gametime

#Создаем список задач, которые должны выполнится в данное время
data modify storage dsb:dc work set value []
function dc:delay/get_tasks with storage dsb:dc temp

#Проходимся по списку задач, выполняю каждую
function dc:delay/loop_works