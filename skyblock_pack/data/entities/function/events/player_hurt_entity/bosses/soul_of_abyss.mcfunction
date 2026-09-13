advancement revoke @s only entities:player_hurt_entity/bosses/soul_of_abyss
#
execute as @e[type=minecraft:piglin_brute,tag=SoulOfAbyss] at @s run return run function entities:bosses/soul_of_abyss/conditions/get_damage