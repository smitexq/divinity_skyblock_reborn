tag @s add less_20percent_hp
playsound minecraft:entity.generic.explode ambient @a[distance=..13] ~ ~ ~ 1 2

#армия
function entities:mobs/abilities/ignite/start
function entities:mobs/abilities/summon_fangs/start
execute as @a[distance=..13] at @s run function entities:mobs/abilities/losing_control/start