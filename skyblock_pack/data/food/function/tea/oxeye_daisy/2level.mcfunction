effect give @s minecraft:regeneration 180 0

execute store result score #rand TeaScore run random value 0..9
execute if score #rand TeaScore matches 0..2 run effect give @s minecraft:strength 30 0