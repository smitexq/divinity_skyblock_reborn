#Узнаем текущее кол-во очков в сфере опыта
execute store result score *var1 variables run data get entity @s Value

#метка this отделяет текущую сферу от ближайших (до двух блоков); метка exp помечает эту сферу, чтобы при зацикливании функции относительно этой сферы алгоритм не выполнялся (только в текущий момент)
tag @s add exp
tag @s add this

#записываем очки из ближайших сфер опыта
execute positioned ~-3 ~-3 ~-3 as @e[type=minecraft:experience_orb, dx=5, dy=5, dz=5, tag=!this] run function optimization:kill_orbs

#Возвращаем все очки в текущую сферу опыта
execute store result entity @s Value long 1 run scoreboard players get *var1 variables
tag @s remove this

#зацикливаем функцию, чтобы проверить остальные сферы опыта в мире на возможность оптимизации
execute as @e[type=minecraft:experience_orb, tag=!exp, sort=arbitrary, limit=1] at @s run function optimization:main