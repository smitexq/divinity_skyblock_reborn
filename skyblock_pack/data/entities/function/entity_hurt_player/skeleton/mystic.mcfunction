advancement revoke @s only entities:entity_hurt_player/skeleton/rare

# effect give @s minecraft:slowness 3 1
execute store result score *var1 variables run random value 0..9
execute unless score *var1 variables matches 0..6 run return 0


execute store result score *var1 variables run random value 1..3
execute if score *var1 variables matches 1 run return run effect give @s minecraft:slowness 8 1
execute if score *var1 variables matches 2 run return run effect give @s minecraft:weakness 7 0
execute if score *var1 variables matches 3 run return run effect give @s minecraft:poison 5 0