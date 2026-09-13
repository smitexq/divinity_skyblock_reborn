scoreboard players reset @s BlazeSpawnerRemoveSouls

$execute store result score *var1 variables run data get storage dsb:cts BlazeSpawner.$(out).itemCount
$execute store result storage dsb:cts BlazeSpawner.$(out).itemCount int 1 run scoreboard players remove *var1 variables 1

function dsb:constructions/blaze_spawner/work/vizual with storage gu:main