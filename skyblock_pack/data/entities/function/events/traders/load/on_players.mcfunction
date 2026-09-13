#Получаем удачу игрока
execute store result score *var2 variables run attribute @s minecraft:luck get
scoreboard players set *var3 variables 5
#*5
scoreboard players operation *var2 variables *= *var3 variables

#К общему значению добавляем
scoreboard players operation *var1 variables += *var2 variables