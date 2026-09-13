execute store result score #a variables run random value -999..999 dsb:library/task/value/a
execute store result score #b variables run random value -999..999 dsb:library/task/value/b
execute store result score #c variables run random value -999..999 dsb:library/task/value/c
execute store result score #z variables run random value -999..999 dsb:library/task/value/z

#проверяем, что b-z != 0
scoreboard players operation *var1 variables = #b variables
scoreboard players operation *var1 variables -= #z variables
#Если 0, то новые значения
execute if score *var1 variables matches 0 run function dsb:events/library_tasks/example/type_2/set_values