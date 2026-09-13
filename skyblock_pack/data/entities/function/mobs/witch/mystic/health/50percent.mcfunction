tag @s add less_50percent_hp
playsound minecraft:enchant.thorns.hit ambient @a[distance=..13] ~ ~1 ~

function entities:mobs/abilities/web_weaver/start
execute as @a[distance=..9] at @s run function entities:mobs/abilities/bone_hand/start

execute store result score #chance variables run random value 0..1
execute if score #chance variables matches 0 run return run function entities:mobs/abilities/jump/start {mob:"zombie"}
execute if score #chance variables matches 1 run return run function entities:mobs/abilities/jump/start {mob:"spider"}