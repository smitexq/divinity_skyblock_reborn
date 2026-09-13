advancement revoke @s only entities:entity_hurt_player/skeleton/rare

# effect give @s minecraft:slowness 3 1
execute store result score *var1 variables run random value 1..6

execute if score *var1 variables matches 1..2 run return run effect give @s minecraft:slowness 6 1
execute if score *var1 variables matches 3..4 run return run effect give @s minecraft:weakness 7 0
execute if score *var1 variables matches 5 run return run effect give @s minecraft:levitation 4 1