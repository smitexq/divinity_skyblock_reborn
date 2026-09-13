tag @s add less_20percent_hp
playsound minecraft:enchant.thorns.hit ambient @a[distance=..13] ~ ~1 ~

function entities:mobs/abilities/clone/start {mob:"witch"}
execute as @a[distance=..13] at @s run function entities:mobs/abilities/daze/start