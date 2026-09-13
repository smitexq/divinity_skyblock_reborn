execute store result score #id Pots run random value 1..7

execute if score #id Pots matches 1..2 run return run summon minecraft:cat
execute if score #id Pots matches 3..4 run return run summon minecraft:rabbit
execute if score #id Pots matches 5..6 run return run summon minecraft:bat
summon minecraft:allay