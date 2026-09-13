tag @s add less_50percent_hp
playsound minecraft:enchant.thorns.hit ambient @a[distance=..13] ~ ~1 ~

function entities:mobs/abilities/military/start
execute as @a[distance=..13] at @s run function entities:mobs/abilities/losing_control/start
function entities:mobs/abilities/teleport/start