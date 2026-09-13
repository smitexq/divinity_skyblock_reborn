$execute if score *var1 variables matches 1.. store result storage dsb:temp index int 1 run random value 0..$(num)
execute unless score *var1 var1 matches 1.. run data modify storage dsb:temp index set value 0

function dsb:events/library_tasks/question/get_question with storage dsb:temp