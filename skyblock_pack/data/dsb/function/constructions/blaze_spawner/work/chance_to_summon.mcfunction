scoreboard players reset @s SummonToBlaze

#Звуки частицы
playsound minecraft:entity.blaze.hurt ambient @a
particle minecraft:flame ~ ~0.5 ~ 2 2 2 0 40

function dc:gu/generate
#Получаем кол-во плачущего обсидиана
function dsb:constructions/blaze_spawner/work/on_blocks/get_count_crobs with storage gu:main
#В зависимости от кол-ва разные шансы
execute if score *var1 variables matches 0..1 run return run function dsb:constructions/blaze_spawner/work/spawn/count_blaze with storage gu:main
execute if score *var1 variables matches 2..3 run return run function dsb:constructions/blaze_spawner/work/spawn/chance
execute if score *var1 variables matches 4..7 run return run function dsb:constructions/blaze_spawner/work/spawn/chance

#Если все 8 плачущий обсидиан
tellraw @a[distance=..13] {"translate":"dsb.events.blaze_spawner.full_obsidian","color":"red"}