#Прибавляем по одному очку каждую итерацию, вплоть до 9. Потом это позволяет перемещать торнадо плавно вправо-влево
execute store result storage dsb:temp WitherStorm int 1 run scoreboard players add @s use.wither_storm 1

#константа
scoreboard players set *var2 variables 2

#Спавним частицы торнадо только если количество очков нечетное, чтобы не нагружать частицами игру, создавая лаги
scoreboard players operation *var1 variables = @s use.wither_storm
scoreboard players operation *var1 variables %= *var2 variables
execute if score *var1 variables matches 1 run function entities:mobs/abilities/wither_storm/select.storm_positioned with storage dsb:temp

#Если кол-во очков будет 9, то меняем направление (или не меняем) торнадо
execute if score @s use.wither_storm matches 9 run function entities:mobs/abilities/wither_storm/select_direction