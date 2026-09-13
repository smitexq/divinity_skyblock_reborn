execute store result score #id Pots run random value 1..13

execute if score #id Pots matches 1..2 run return run summon minecraft:cow ~ ~ ~ {Age:-20000}
execute if score #id Pots matches 3..4 run return run summon minecraft:pig ~ ~ ~ {Age:-20000}
execute if score #id Pots matches 5..6 run return run summon minecraft:chicken
execute if score #id Pots matches 7..8 run return run summon minecraft:sheep ~ ~ ~ {Age:-20000}
execute if score #id Pots matches 9..10 run return run summon minecraft:bat
execute if score #id Pots matches 11..12 run return run summon minecraft:wolf ~ ~ ~ {Age:-20000}

summon minecraft:allay