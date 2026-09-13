advancement revoke @s only entities:entity_hurt_player/spider/rare

execute store result score *var1 variables run random value 0..99
execute if score *var1 variables matches 0..14 run effect give @s minecraft:weakness 6 0