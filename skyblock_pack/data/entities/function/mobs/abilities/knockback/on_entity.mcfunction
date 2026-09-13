#Записываем координаты сущности и объявляем переменную конечного вектора отбрасывания
data modify storage dsb:temp PowerfulJump.Player set from entity @s Pos
data modify storage dsb:temp PowerfulJump.Motion set value [0.0d,0.0d,0.0d]

###Находим входной вектор. Вычитаем из координат конца координаты начала (в нашем случае из позиции сущности вычитаем позицию босса)### 
#По oX
execute store result score *var1 variables run data get storage dsb:temp PowerfulJump.Mob[0] 1000
execute store result score *var2 variables run data get storage dsb:temp PowerfulJump.Player[0] 1000
execute store result storage dsb:temp PowerfulJump.Motion[0] double 0.0005 run scoreboard players operation *var2 variables -= *var1 variables
#oY
execute store result score *var1 variables run data get storage dsb:temp PowerfulJump.Mob[1] 1000
execute store result score *var2 variables run data get storage dsb:temp PowerfulJump.Player[1] 1000
scoreboard players operation *var2 variables -= *var1 variables
#Добавляем к вектору по координате Y 1,25. Нужно для того, если сущность находилась на поверхности, чтобы хоть как-то отбросилась
execute store result storage dsb:temp PowerfulJump.Motion[1] double 0.0005 run scoreboard players add *var2 variables 2500
#oZ
execute store result score *var1 variables run data get storage dsb:temp PowerfulJump.Mob[2] 1000
execute store result score *var2 variables run data get storage dsb:temp PowerfulJump.Player[2] 1000
execute store result storage dsb:temp PowerfulJump.Motion[2] double 0.0005 run scoreboard players operation *var2 variables -= *var1 variables

###Ищем выходной вектор###
# d = 1/(dx^2 + dy^2 + dz^2) | d=var1
# vector = (dx*d,dy*d,dz*d)
# Таким образом мы уменьшим вектор, если игрок находит вдали. И увелечим, если игрок вблизи (чем ближе, тем дальше улетит)
#Ищем dx^2 и прибавляем к var1
execute store result score *var2 variables run data get storage dsb:temp PowerfulJump.Motion[0] 1000
scoreboard players operation *var2 variables *= *var2 variables
scoreboard players operation *var3 variables = *var2 variables
#Ищем dy^2 и прибавляем к var1
execute store result score *var2 variables run data get storage dsb:temp PowerfulJump.Motion[1] 1000
scoreboard players operation *var2 variables *= *var2 variables
scoreboard players operation *var3 variables += *var2 variables
#Ищем dz^2 и прибавляем к var1
execute store result score *var2 variables run data get storage dsb:temp PowerfulJump.Motion[2] 1000
scoreboard players operation *var2 variables *= *var2 variables
scoreboard players operation *var3 variables += *var2 variables

#Исходное d это 1/var1 * 1000050000 (умножение нужно для того, чтобы можно было записать число в scoreboard)
scoreboard players set *var1 variables 1000050000
scoreboard players operation *var1 variables /= *var3 variables

###Составляем новый вектор, путем умножения на d###
execute store result score *var2 variables run data get storage dsb:temp PowerfulJump.Motion[0] 1000
#Умножали каждое значение на 1000, поэтому делим на 1000^2
execute store result storage dsb:temp PowerfulJump.Motion[0] double 0.000001 run scoreboard players operation *var2 variables *= *var1 variables

execute store result score *var2 variables run data get storage dsb:temp PowerfulJump.Motion[1] 1000
execute store result storage dsb:temp PowerfulJump.Motion[1] double 0.000001 run scoreboard players operation *var2 variables *= *var1 variables

execute store result score *var2 variables run data get storage dsb:temp PowerfulJump.Motion[2] 1000
execute store result storage dsb:temp PowerfulJump.Motion[2] double 0.000001 run scoreboard players operation *var2 variables *= *var1 variables



#Спавним снежок и сажаем на него игрока
function entities:mobs/abilities/knockback/mount_snowball with storage dsb:temp PowerfulJump

#Очищаем Motion
data remove storage dsb:temp PowerfulJump.Motion

#Добавляем тег игроку и каждые 5 тиков будем проверять, не слез ли игрок со снежка (чтобы посадить обратно)
tag @s add MountSnowball
function dc:get_call {tick:5, command:"function entities:mobs/abilities/knockback/check_if_dismount", requirePos:false, requireEntity:true}