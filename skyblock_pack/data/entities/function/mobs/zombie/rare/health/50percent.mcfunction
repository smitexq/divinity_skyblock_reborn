tag @s add less_50percent_hp
playsound minecraft:enchant.thorns.hit ambient @a[distance=..13] ~ ~1 ~
# playsound minecraft:entity.generic.explode ambient @a[distance=..13] ~ ~ ~ 1 2

#1.1 ignite
function entities:mobs/abilities/ignite/start

execute store result score #chance variables run random value 0..9
execute if score #chance variables matches 0..3 run function entities:mobs/abilities/powerful_jump/start