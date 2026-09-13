###вычисляем кол-во поинтов по формуле: 2.5*lvl^2 – 40.5*lvl + 360
#домножим все на 10, чтобы работать с целыми числами, ответ поделим на 10: 25*lvl^2 – 405*lvl + 3600

#Для расчетов
scoreboard players set *10 lvl 10
scoreboard players set *25 lvl 25
scoreboard players set *405 lvl 405
scoreboard players set *3600 lvl 3600
scoreboard players operation *levels_copy lvl = *levels lvl

#1) lvl^2
scoreboard players operation *levels lvl *= *levels lvl

#2) 25*lvl^2
scoreboard players operation *levels lvl *= *25 lvl

#3) 405*lvl
scoreboard players operation *levels_copy lvl *= *405 lvl

#4) 25*lvl^2 – 405*lvl
scoreboard players operation *levels lvl -= *levels_copy lvl

#5) 25*lvl^2 – 405*lvl + 3600
scoreboard players operation *levels lvl += *3600 lvl


#Делим результат на 10
scoreboard players operation *levels lvl /= *10 lvl

#Возвращаем результат
return run scoreboard players get *levels lvl