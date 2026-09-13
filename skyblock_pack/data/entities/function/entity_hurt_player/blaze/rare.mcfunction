advancement revoke @s only entities:entity_hurt_player/blaze/rare

execute store result score #chance variables run random value 0..99
execute if score #chance variables matches 0..14 run effect give @s minecraft:blindness 4 0