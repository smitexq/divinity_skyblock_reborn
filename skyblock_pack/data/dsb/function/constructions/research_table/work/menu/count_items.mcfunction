data modify storage dsb:cts Temp set value {}
data modify storage dsb:cts Temp.uuid set from storage gu:main out
execute store result storage dsb:cts Temp.index int 1 run scoreboard players get @s r.tableIndex

function dsb:constructions/research_table/work/menu/set_count with storage dsb:cts Temp