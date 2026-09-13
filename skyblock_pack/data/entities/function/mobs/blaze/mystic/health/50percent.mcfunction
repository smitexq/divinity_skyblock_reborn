tag @s add less_50percent_hp
playsound minecraft:enchant.thorns.hit ambient @a[distance=..13] ~ ~1 ~

execute as @a[distance=..13] at @s run function entities:mobs/abilities/bone_hand/start
execute if entity @s[tag=!no.use.teleport] run function entities:mobs/abilities/teleport/start
function entities:mobs/abilities/throw_mini_tnt/start