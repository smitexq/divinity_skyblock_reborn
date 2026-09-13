#Количество частиц
execute store result score *var1 variables run random value 1..3

execute if score *var1 variables matches 1 run function food:cauldron/cook/tea_particle {count:1}
execute if score *var1 variables matches 2 run function food:cauldron/cook/tea_particle {count:2}
execute if score *var1 variables matches 3 run function food:cauldron/cook/tea_particle {count:3}

#Через какое время повторить
execute store result score *var1 variables run random value 1..2

execute if score *var1 variables matches 1 run return run function dc:get_call {tick:30, command:"function food:cauldron/cook/stable_particle", requirePos:true, requireEntity:true}
execute if score *var1 variables matches 2 run return run function dc:get_call {tick:65, command:"function food:cauldron/cook/stable_particle", requirePos:true, requireEntity:true}