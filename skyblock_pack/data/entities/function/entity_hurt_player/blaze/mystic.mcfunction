advancement revoke @s only entities:entity_hurt_player/blaze/mystic

execute if entity @s[tag=ActiveHealing] run return 0

execute store result score #chance variables run random value 0..99
execute if score #chance variables matches 0..6 as @e[type=minecraft:blaze,tag=mystic,sort=nearest] at @s run function entities:mobs/abilities/regeneration/start