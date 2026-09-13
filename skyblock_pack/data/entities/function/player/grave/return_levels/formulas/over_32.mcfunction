###вычисляем кол-во поинтов по формуле: 4.5*lvl^2 – 162.5*lvl + 2220
#домножим все на 10, чтобы работать с целыми числами, ответ поделим на 10: 45*lvl^2 – 1625*lvl + 22200

#Для расчетов
scoreboard players set *10 lvl 10
scoreboard players set *45 lvl 45
scoreboard players set *1625 lvl 1625
scoreboard players set *22200 lvl 22200
scoreboard players operation *levels_copy lvl = *levels lvl

#1) lvl^2
scoreboard players operation *levels lvl *= *levels lvl

#2) 45*lvl^2
scoreboard players operation *levels lvl *= *45 lvl

#3) 1625*lvl
scoreboard players operation *levels_copy lvl *= *1625 lvl

#4) 45*lvl^2 – 1625*lvl
scoreboard players operation *levels lvl -= *levels_copy lvl

#5) 45*lvl^2 – 1625*lvl + 22200
scoreboard players operation *levels lvl += *22200 lvl


#Делим результат на 10
scoreboard players operation *levels lvl /= *10 lvl

#Возвращаем результат
return run scoreboard players get *levels lvl