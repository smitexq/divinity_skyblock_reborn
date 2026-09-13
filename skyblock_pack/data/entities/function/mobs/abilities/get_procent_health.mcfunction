#Узнаем максимальное количество здоровья и текущее
execute store result score *var1 variables run attribute @s minecraft:max_health base get
execute store result score *var2 variables run data get entity @s Health
##hp - процент hp
scoreboard players operation #hp variables = *var2 variables

#константа
scoreboard players set *var6 variables 100

#Узнаем текущий процент хп: 100*(health)/(max_health)
scoreboard players operation #hp variables *= *var6 variables
scoreboard players operation #hp variables /= *var1 variables