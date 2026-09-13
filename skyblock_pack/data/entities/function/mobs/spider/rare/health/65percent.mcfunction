tag @s add less_65percent_hp

#эффекты
particle minecraft:damage_indicator ~ ~1.2 ~ 0.15 0.05 0.15 0.3 7 normal
playsound minecraft:enchant.thorns.hit ambient @a ~ ~1 ~ 1


execute store result score #chance variables run random value 0..9
execute if score #chance variables matches 0..3 run return run function entities:mobs/abilities/ignite/start