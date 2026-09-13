tag @s add less_15percent_hp

execute as @a[distance=..15] at @s run function entities:mobs/abilities/losing_control/start
#Отступление
function entities:mobs/abilities/run/start