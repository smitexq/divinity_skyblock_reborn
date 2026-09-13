advancement revoke @s only entities:entity_hurt_player/bosses/drowned_king

effect give @s weakness 6 0
effect give @s slowness 4 1

execute unless entity @e[type=drowned, tag=drowned_king, tag=2phase] run return 0
execute store result score *var1 variables run random value 0..1
execute if score *var1 variables matches 0 run effect give @s mining_fatigue 8 0