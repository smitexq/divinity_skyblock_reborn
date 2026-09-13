tag @s remove cook
scoreboard players reset @s Cauldron

#Количество камня -30
$execute store result score *var1 variables run data get storage dsb:cts Cauldron.$(out).itemCount
$execute store result storage dsb:cts Cauldron.$(out).itemCount int 1 run scoreboard players remove *var1 variables 30

setblock ~ ~ ~ minecraft:lava_cauldron
playsound minecraft:block.fire.extinguish ambient @a

function dsb:constructions/cauldron/work/vizual with storage gu:main