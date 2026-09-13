#записываем количество очков из ближайших сфер в скорборд и убиваем их
execute store result score *var2 variables run data get entity @s Value
scoreboard players operation *var1 variables += *var2 variables

kill @s