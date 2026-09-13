#Если область прогружена, то заканиваем проверку
$execute in $(dimension) if loaded $(X_int) $(Y_int) $(Z_int) run return 0

#Если нет, то переносим эту задачу на 10 секунд вперед
function dc:delay/hold_up/start
# $tellraw @a {"text":"Server [INFO]: complete save schedule on position $(X_int) $(Y_int) $(Z_int) in $(dimension)","color":"aqua"}

#Следующая задача
data remove storage dsb:dc work[-1]
data modify storage dsb:dc temp set from storage dsb:dc work[-1]


##Кол-во оставшихся задач
scoreboard players remove *var1 variables 1
execute if score *var1 variables matches 0 run return run data modify storage dsb:dc temp set value {}

###И анализируем следующую задачу
#Если в ней тоже важно наличие сущности
execute if data storage dsb:dc temp{requireEntity:1} run function dc:delay/check_if_entity with storage dsb:dc temp
#Если только позиция
execute if data storage dsb:dc temp{requirePos:1} run function dc:delay/get_coords