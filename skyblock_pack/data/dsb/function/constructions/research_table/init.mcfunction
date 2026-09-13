###Устанавливаем начальное меню. uuid маркера стола изучений, coords - относительные координаты бочки, v - для направления север-юг (при разрушении), rotated - направление для дисплеев (лицевая сторона)

$execute if predicate dsb:constructions/research_table/v1 run function dsb:constructions/research_table/versions/setup {uuid:$(out), coords:"~-1 ~ ~", v:"v1-3", rotated:"0f, 0f"}
$execute if predicate dsb:constructions/research_table/v2 run function dsb:constructions/research_table/versions/setup {uuid:$(out), coords:"~ ~ ~1", v:"v2-4", rotated:"-90f, 0f"}
$execute if predicate dsb:constructions/research_table/v3 run function dsb:constructions/research_table/versions/setup {uuid:$(out), coords:"~1 ~ ~", v:"v1-3", rotated:"180f, 0f"}
$execute if predicate dsb:constructions/research_table/v4 run function dsb:constructions/research_table/versions/setup {uuid:$(out), coords:"~ ~ ~-1", v:"v2-4", rotated:"90f, 0f"}

###Начальное меню
$execute as @e[type=marker, tag=$(out)] run data modify block ~ ~ ~ Items set from storage dsb:cts ResearchTable.StartMenu
scoreboard players set @s r.tableIndex 0

#0 обозначает, что игридиент не собран, 1 - собран. Считается кол-во num:1
$data modify storage dsb:cts ResearchTable.$(out).successResult set value [{num:0},{num:0},{num:0},{num:0},{num:0},{num:0}]
#Текущий рецепт
$data modify storage dsb:cts ResearchTable.$(out).recipe set value []
#Индекс перед обновлением
$data modify storage dsb:cts ResearchTable.$(out).lastIndex set value 0

#На позиции
function dsb:constructions/research_table/on_pos
#Проверка меню
execute if predicate dsb:constructions/research_table/v1 positioned ~-1 ~ ~ run return run function dc:get_call {tick:10, command:"function dsb:constructions/research_table/work/menu/check_menu", requirePos:true, requireEntity:true}
execute if predicate dsb:constructions/research_table/v2 positioned ~ ~ ~1 run return run function dc:get_call {tick:10, command:"function dsb:constructions/research_table/work/menu/check_menu", requirePos:true, requireEntity:true}
execute if predicate dsb:constructions/research_table/v3 positioned ~1 ~ ~ run return run function dc:get_call {tick:10, command:"function dsb:constructions/research_table/work/menu/check_menu", requirePos:true, requireEntity:true}
execute if predicate dsb:constructions/research_table/v4 positioned ~ ~ ~-1 run return run function dc:get_call {tick:10, command:"function dsb:constructions/research_table/work/menu/check_menu", requirePos:true, requireEntity:true}