tag @s add less_30percent_hp
playsound minecraft:entity.generic.explode ambient @a[distance=..13] ~ ~ ~ 1 2

function entities:mobs/abilities/clone/start {mob:"enderman"}
execute as @a[distance=..13] at @s run function entities:mobs/abilities/daze/start
