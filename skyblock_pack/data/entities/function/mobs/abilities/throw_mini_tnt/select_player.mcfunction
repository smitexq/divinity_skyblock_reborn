#Записываем координаты мини босса
data modify storage dsb:temp ThrowTnt.Entity set from entity @s Pos

#Призываем маркер немного впереди, чтобы узнать вектор бросания тнт
summon minecraft:marker ^ ^1 ^2 {Tags:["this"]}
data modify storage dsb:temp ThrowTnt.Motion set from entity @e[type=marker,tag=this,distance=..3,limit=1] Pos
kill @e[type=marker,tag=this,distance=..3,limit=1]

#Перед вычислением корня обнуляем входящую переменную
scoreboard players set in math 0

#Ищем dx^2 и прибавляем к var1
execute store result score *var1 variables run data get storage dsb:temp ThrowTnt.Entity[0] 1000
execute store result score *var2 variables run data get storage dsb:temp ThrowTnt.Player[0] 1000
execute store result score *var1 variables run scoreboard players operation *var2 variables -= *var1 variables 
scoreboard players operation *var1 variables *= *var1 variables
scoreboard players operation in math = *var1 variables
#Ищем dy^2 и прибавляем к var1
execute store result score *var1 variables run data get storage dsb:temp ThrowTnt.Entity[1] 1000
execute store result score *var2 variables run data get storage dsb:temp ThrowTnt.Player[1] 1000
execute store result score *var1 variables run scoreboard players operation *var2 variables -= *var1 variables 
scoreboard players operation *var1 variables *= *var1 variables
scoreboard players operation in math += *var1 variables
#Ищем dz^2 и прибавляем к var1
execute store result score *var1 variables run data get storage dsb:temp ThrowTnt.Entity[2] 1000
execute store result score *var2 variables run data get storage dsb:temp ThrowTnt.Player[2] 1000
execute store result score *var1 variables run scoreboard players operation *var2 variables -= *var1 variables 
scoreboard players operation *var1 variables *= *var1 variables
scoreboard players operation in math += *var1 variables

#Делим результат для получения нормализованного числа
scoreboard players set *var1 variables 1000000
scoreboard players operation in math /= *var1 variables

#Математическое исчесление корня, чтобы найти расстояния
function math:root
#Результат в out получается с умножением на 100

#В зависимости от различного расстояния будут различные константы для умножения на вектор
execute if score out math matches ..780 run scoreboard players set *var1 variables 18
execute if score out math matches 781..1380 run scoreboard players set *var1 variables 20
execute if score out math matches 1381.. run scoreboard players set *var1 variables 21
execute if score out math matches 1941..3100 run scoreboard players set *var1 variables 22
execute if score out math matches 3101.. run scoreboard players set *var1 variables 23
scoreboard players operation out math /= *var1 variables


###Находим конечный вектор. При этом умножаем этот вектор на нашу переменную### 
#По oX
execute store result score *var1 variables run data get storage dsb:temp ThrowTnt.Entity[0] 1000
execute store result score *var2 variables run data get storage dsb:temp ThrowTnt.Motion[0] 1000
scoreboard players operation *var2 variables -= *var1 variables
execute store result storage dsb:temp ThrowTnt.Motion[0] double 0.00001 run scoreboard players operation *var2 variables *= out math
#oY
execute store result score *var1 variables run data get storage dsb:temp ThrowTnt.Entity[1] 1000
execute store result score *var2 variables run data get storage dsb:temp ThrowTnt.Motion[1] 1000
scoreboard players operation *var2 variables -= *var1 variables
execute store result storage dsb:temp ThrowTnt.Motion[1] double 0.00001 run scoreboard players operation *var2 variables *= out math
#oZ
execute store result score *var1 variables run data get storage dsb:temp ThrowTnt.Entity[2] 1000
execute store result score *var2 variables run data get storage dsb:temp ThrowTnt.Motion[2] 1000
scoreboard players operation *var2 variables -= *var1 variables
execute store result storage dsb:temp ThrowTnt.Motion[2] double 0.00001 run scoreboard players operation *var2 variables *= out math

#Спавним стойку для брони с динамитом и бросаем её
function entities:mobs/abilities/throw_mini_tnt/summon_tnt with storage dsb:temp ThrowTnt