advancement revoke @s only entities:entity_hurt_player/desert_archives/spider

execute store result score *var1 variables run random value 0..1
execute if score *var1 variables matches 0 run effect give @s minecraft:slowness 20 1