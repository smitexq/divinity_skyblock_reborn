#Записываем количество задач
execute store result score *var1 variables run data get storage dsb:dc work
#Если задач больше нет, то выходим из цикла
execute if score *var1 variables matches 0 run return 0


###первую задачу в обработку (с конца)
data modify storage dsb:dc temp set from storage dsb:dc work[-1]

#Если для выполнения команды нужна сущность, то проверяем существует ли она до сих пор
execute if data storage dsb:dc temp{requireEntity:1} run function dc:delay/check_if_entity with storage dsb:dc temp

#проверяем прогружена ли область (в нужном измерении)
execute if data storage dsb:dc temp{requirePos:1} run function dc:delay/get_coords


#удаляем эту задачу
data remove storage dsb:dc work[-1]

###
#Запуск относительно сущности, выполняющей команду
execute if data storage dsb:dc temp{requirePos:0, requireEntity:1} run function dc:delay/run_cmd/on_entity with storage dsb:dc temp
#Не важна ни позиция, ни сущность. Запуск на нулевых координатах
execute if data storage dsb:dc temp{requirePos:0, requireEntity:0} run function dc:delay/run_cmd/blank_launch with storage dsb:dc temp
#Запуск на определенных координатах от имени сущности
execute if data storage dsb:dc temp{requirePos:1, requireEntity:1} run function dc:delay/run_cmd/as_entity with storage dsb:dc temp
#Запуск на определенных координатах без проверки сущности
execute if data storage dsb:dc temp{requirePos:1, requireEntity:0} run function dc:delay/run_cmd/on_position with storage dsb:dc temp
###

#переход к сдедующей задаче
function dc:delay/loop_works