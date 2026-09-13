advancement revoke @s only entities:entity_hurt_player/zombie/rare

execute store result score *var1 variables run random value 0..1
execute if score *var1 variables matches 0 run return run effect give @s minecraft:hunger 8 20

effect give @s minecraft:weakness 6 0