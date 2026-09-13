#Количество попыток выбрать направление
execute store result score *var1 variables run data get storage dsb:temp WebWeaver.NumberOfPosX
execute store result storage dsb:temp WebWeaver.NumberOfPosX int 1 run scoreboard players add *var1 variables 1

#Мы проверяем каждые 10 градусов. То есть, если мы прошли 36*10 = 360, то бросаем паутину на изначальном месте
execute if score *var1 variables matches 37 rotated as @s run return run function entities:mobs/abilities/web_weaver/web_raycast/throw_cobweb

#Обнуляем ограничение по рекурсии
scoreboard players set @s RecursionDepth 0
#Вращаем на 10 градусов вправо
tp @s ~ ~ ~ ~10 -50

#Относительно этих координат взляда проверяем направление
execute rotated as @s run function entities:mobs/abilities/web_weaver/check_direction