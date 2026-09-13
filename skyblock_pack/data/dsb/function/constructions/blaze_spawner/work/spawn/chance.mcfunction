#2-3 блока шанс 80%; 4-7 блоков шанс 50%
execute store result score #spawnChance BlazeSpawner run random value 0..9

#var1 - кол во обсы
execute if score *var1 variables matches 2..3 if score #spawnChance BlazeSpawner matches 0..7 run return run function dsb:constructions/blaze_spawner/work/spawn/count_blaze with storage gu:main
execute if score *var1 variables matches 4..7 if score #spawnChance BlazeSpawner matches 0..4 run return run function dsb:constructions/blaze_spawner/work/spawn/count_blaze with storage gu:main

tellraw @a[distance=..10] {"translate":"dsb.events.blaze_spawner.few_obsidian","color":"gold"}