#Помечаем, что был найден вектор, в направлении которого есть плотный блок
scoreboard players set *var3 variables -1

#Если встретился плотный блок, то запускаем паутину и выбираем другие 2 направления, относительно текущего
#Кидаем паутину
execute rotated as @s run function entities:mobs/abilities/web_weaver/web_raycast/set_values

#Первый вектор
execute store result storage dsb:temp WebWeaver.Rotation.x int 1 run random value 100..150
execute store result storage dsb:temp WebWeaver.Rotation.y int 1 run random value -20..-5
data modify storage dsb:temp WebWeaver.Rotation.DelayTick set value 6
#Относительно текущего взгляда отклоняем направление взгляда на случайно выбранное положительное значение по X от 50 до 150
#При этом мы пускаем паутину с задержкой...
function entities:mobs/abilities/web_weaver/web_raycast/delay with storage dsb:temp WebWeaver.Rotation

#Второй вектор
execute store result storage dsb:temp WebWeaver.Rotation.x int 1 run random value -150..-100
execute store result storage dsb:temp WebWeaver.Rotation.y int 1 run random value -20..-5
data modify storage dsb:temp WebWeaver.Rotation.DelayTick set value 12
#Относительно текущего взгляда отклоняем направление взгляда на случайно выбранное отрицательное значение по X от -150 до -50
function entities:mobs/abilities/web_weaver/web_raycast/delay with storage dsb:temp WebWeaver.Rotation

kill @s
data remove storage dsb:temp WebWeaver