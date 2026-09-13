#Проверка каждые 30 сек
schedule function gen:islands/count_players 30s

#генерировать дополнительный только если началась игра
execute unless score *start gameplay matches 1 run return 0

#Если уже сгенерирован доп.остров, то больше не считаем кол-во игроков
execute if score #generateAdditionalIsland gen matches 1 run return 0

#Общее кол-во игроков
execute store result score #players gen run list
#Если больше 3-х, то генерим доп.остров рядом
execute if score #players gen matches 3.. at @e[type=marker, tag=StartIslandCoords] run function gen:start_zone/prepare_to_gen_addit