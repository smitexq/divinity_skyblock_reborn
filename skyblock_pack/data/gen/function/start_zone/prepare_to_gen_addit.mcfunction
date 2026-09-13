scoreboard players set #generateAdditionalIsland gen 1

#10 попыток сгенерить остров
scoreboard players add #attempt gen 1
execute if score #attempt gen matches 10 run return 0

#Узнаем центральный биом
execute store result score #id gen run data get storage dsb_gen:gen List[255][255]
execute store result score #pos gen run random value 0..3

execute if score #pos gen matches 0 positioned ~8 ~4 ~8 if predicate gen:empty_zone run return run function gen:start_zone/gen_additional
execute if score #pos gen matches 1 positioned ~-8 ~4 ~8 if predicate gen:empty_zone run return run function gen:start_zone/gen_additional
execute if score #pos gen matches 2 positioned ~8 ~4 ~-8 if predicate gen:empty_zone run return run function gen:start_zone/gen_additional
execute if score #pos gen matches 3 positioned ~-8 ~4 ~-8 if predicate gen:empty_zone run return run function gen:start_zone/gen_additional

#Еще попытка сгенерить, если не получилось
function gen:start_zone/prepare_to_gen_addit