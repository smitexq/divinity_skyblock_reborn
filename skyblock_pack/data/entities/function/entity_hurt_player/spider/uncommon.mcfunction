advancement revoke @s only entities:entity_hurt_player/spider/uncommon

execute store result score *var1 variables run random value 0..9
execute if score *var1 variables matches 0..3 run effect give @s minecraft:poison 8 0