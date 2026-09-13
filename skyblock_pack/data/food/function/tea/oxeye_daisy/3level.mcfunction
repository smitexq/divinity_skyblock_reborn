effect give @s minecraft:regeneration 90 1

execute store result score #rand TeaScore run random value 0..1
execute if score #rand TeaScore matches 0 run effect give @s minecraft:strength 40 0