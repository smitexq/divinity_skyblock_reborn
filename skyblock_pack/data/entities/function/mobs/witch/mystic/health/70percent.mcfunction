tag @s add less_70percent_hp
playsound minecraft:entity.generic.explode ambient @a[distance=..13] ~ ~ ~ 1 2

#армия
# function entities:mobs/abilities/military/start
execute as @a[distance=..13] at @s run function entities:mobs/abilities/losing_control/start
