#каждые 15 сек попытка спавна (узнаем кол-во плачущего обсидиана): 2-3 = 80%; 4-7 = 50%; Если срабатывает, выбираем сколько
# призываем ифритов (1-3). 1 душа - 20 секунд работы спавнера. После сжигания души воспроизводятся частицы синего пламени

scoreboard players remove @s BlazeSpawner 1
particle minecraft:flame ~ ~0.5 ~ 0.15 0.15 0.15 0 2

#призыв ифритов
scoreboard players add @s SummonToBlaze 1
execute if score @s SummonToBlaze matches 15 run function dsb:constructions/blaze_spawner/work/chance_to_summon


###Удаление одной души
scoreboard players add @s BlazeSpawnerRemoveSouls 1
execute if score @s BlazeSpawnerRemoveSouls matches 20 run function dc:gu/generate
execute if score @s BlazeSpawnerRemoveSouls matches 20 run function dsb:constructions/blaze_spawner/work/remove_soul with storage gu:main
###

execute if score @s BlazeSpawner matches 1.. run return run function dc:get_call {tick:20, command:"function dsb:constructions/blaze_spawner/work/loop", requirePos:false, requireEntity:true}
#Если закончился таймер, то нужно снять ограды и тег
function dc:gu/generate
function dsb:constructions/blaze_spawner/work/return_to_work with storage gu:main