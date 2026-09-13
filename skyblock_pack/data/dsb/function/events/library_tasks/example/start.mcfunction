#Тип примера
execute store result score *var1 variables run random value 1..2 dsb:library/example/type

execute if score *var1 variables matches 1 run return run function dsb:events/library_tasks/example/type_1/init
execute if score *var1 variables matches 2 run return run function dsb:events/library_tasks/example/type_2/init