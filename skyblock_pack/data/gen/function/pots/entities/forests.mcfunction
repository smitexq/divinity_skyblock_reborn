execute store result score #id Pots run random value 1..6

execute if score #id Pots matches 1 run return run summon minecraft:cow ~ ~ ~ {Age:-20000}
execute if score #id Pots matches 2 run return run summon minecraft:pig ~ ~ ~ {Age:-20000}
execute if score #id Pots matches 3 run return run summon minecraft:bee
execute if score #id Pots matches 4 run return run summon minecraft:chicken
execute if score #id Pots matches 5 run return run summon minecraft:sheep ~ ~ ~ {Age:-20000}

summon minecraft:bat
summon minecraft:bat