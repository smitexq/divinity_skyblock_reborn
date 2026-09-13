tag @s add initLibrary
# tag @s add Library
#Создаем запись в хранилище с точками
function dsb:constructions/small_library/task/create_storage

#Активация вопросов
function dc:get_call {tick:200, command:"function dsb:constructions/small_library/task/work/main", requirePos:false, requireEntity:true}

execute if predicate dsb:constructions/s.library/v1 run return run function dsb:constructions/small_library/task/v1
execute if predicate dsb:constructions/s.library/v2 run return run function dsb:constructions/small_library/task/v2
execute if predicate dsb:constructions/s.library/v3 run return run function dsb:constructions/small_library/task/v3
execute if predicate dsb:constructions/s.library/v4 run return run function dsb:constructions/small_library/task/v4