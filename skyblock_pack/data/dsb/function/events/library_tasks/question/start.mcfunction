# $data modify storage dsb:temp temp set from storage dsb:library_tasks All.$(out)

execute store result score *var1 variables run data get storage dsb:temp temp
execute store result storage dsb:temp num int 1 run scoreboard players remove *var1 variables 1

function dsb:events/library_tasks/question/get_index with storage dsb:temp