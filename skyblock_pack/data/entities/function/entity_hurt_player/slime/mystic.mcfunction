advancement revoke @s only entities:entity_hurt_player/slime/mystic

execute store result score #chance variables run random value 0..1
execute if score #chance variables matches 0 run return run effect give @s minecraft:slowness 7 1
effect give @s minecraft:weakness 4 0