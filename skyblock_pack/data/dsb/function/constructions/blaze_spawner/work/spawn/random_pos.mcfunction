data modify storage dsb:cts Temp set value {}
#Кол-во попыток призыва
scoreboard players add #attempt BlazeSpawner 1

#Отклонение по x
execute store result storage dsb:cts Temp.dx int 1 store result score #d_x BlazeSpawner run random value 0..6
#Шанс на -1
execute store result score *var1 variables run random value 0..1
execute if score *var1 variables matches 0 store result storage dsb:cts Temp.dx int 1 run scoreboard players operation #d_x BlazeSpawner *= #-1 BlazeSpawner

#Отклонение по y
execute store result storage dsb:cts Temp.dy int 1 store result score #d_y BlazeSpawner run random value 0..6
#Шанс на -1
execute store result score *var1 variables run random value 0..1
execute if score *var1 variables matches 0 store result storage dsb:cts Temp.dy int 1 run scoreboard players operation #d_y BlazeSpawner *= #-1 BlazeSpawner

#Отклонение по z
execute store result storage dsb:cts Temp.dz int 1 store result score #d_z BlazeSpawner run random value 0..6
#Шанс на -1
execute store result score *var1 variables run random value 0..1
execute if score *var1 variables matches 0 store result storage dsb:cts Temp.dz int 1 run scoreboard players operation #d_z BlazeSpawner *= #-1 BlazeSpawner

###Если позиция не подходит для спавна, то пытаемся дальше
execute store success score #result BlazeSpawner run function dsb:constructions/blaze_spawner/work/spawn/check_pos with storage dsb:cts Temp
execute if score #result BlazeSpawner matches 1 run return 0

#Цикл
execute if score #attempt BlazeSpawner matches ..25 run return run function dsb:constructions/blaze_spawner/work/spawn/random_pos
scoreboard players set #attempt BlazeSpawner 0