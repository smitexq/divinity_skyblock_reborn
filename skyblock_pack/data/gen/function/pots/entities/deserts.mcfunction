execute store result score #id Pots run random value 1..3

execute if score #id Pots matches 1 run return run summon minecraft:cat
execute if score #id Pots matches 2..3 run return run summon minecraft:allay