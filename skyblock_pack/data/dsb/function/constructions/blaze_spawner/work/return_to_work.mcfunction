tag @s remove work

scoreboard players reset @s BlazeSpawner
scoreboard players reset @s SummonToBlaze
scoreboard players reset @s BlazeSpawnerRemoveSouls

setblock ~ ~ ~ air
setblock ~1 ~ ~ air
setblock ~-1 ~ ~ air
setblock ~ ~ ~1 air
setblock ~ ~ ~-1 air

$kill @e[type=interaction, tag=block, tag=$(out)]