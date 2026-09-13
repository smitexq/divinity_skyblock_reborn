tag @s add initHugeLibrary
#Создаем запись в хранилище с точками
function dsb:constructions/small_library/task/create_storage

#Активация вопросов
function dc:get_call {tick:200, command:"function dsb:constructions/huge_library/task/work/main", requirePos:false, requireEntity:true}

execute positioned ~ ~-1 ~ if predicate dsb:constructions/h.library/v1 positioned ~ ~1 ~ run return run function dsb:constructions/huge_library/task/v1
execute positioned ~ ~-1 ~ if predicate dsb:constructions/h.library/v2 positioned ~ ~1 ~ run return run function dsb:constructions/huge_library/task/v2
execute positioned ~ ~-1 ~ if predicate dsb:constructions/h.library/v3 positioned ~ ~1 ~ run return run function dsb:constructions/huge_library/task/v3
execute positioned ~ ~-1 ~ if predicate dsb:constructions/h.library/v4 positioned ~ ~1 ~ run return run function dsb:constructions/huge_library/task/v4