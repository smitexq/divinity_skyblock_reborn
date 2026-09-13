tag @s add less_50percent_hp
# playsound minecraft:enchant.thorns.hit ambient @a[distance=..13] ~ ~1 ~
playsound minecraft:entity.generic.explode ambient @a[distance=..13] ~ ~ ~ 1 2

#армия
function entities:mobs/abilities/military/start
#ошеломление
execute as @a[distance=..15] at @s run function entities:mobs/abilities/daze/start