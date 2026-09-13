###вычисляем кол-во поинтов по формуле: lvl^2 + 6*lvl

#Для расчетов
scoreboard players set *6 lvl 6
scoreboard players operation *levels_copy lvl = *levels lvl

#1) lvl^2
scoreboard players operation *levels lvl *= *levels lvl

#2) 6*lvl
scoreboard players operation *levels_copy lvl *= *6 lvl

#3) +
scoreboard players operation *levels lvl += *levels_copy lvl

#Возвращаем результат
return run scoreboard players get *levels lvl