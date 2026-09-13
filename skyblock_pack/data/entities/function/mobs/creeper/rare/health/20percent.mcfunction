tag @s add less_20percent_hp

function entities:mobs/abilities/powerful_blast/start
execute as @a[distance=..15] at @s run function entities:mobs/abilities/losing_control/start