advancement revoke @s only entities:player_hurt_entity/bosses/drowned_king

#помечаем игрока, чтобы на него перевести агр босса
tag @s add player_for_anger
execute as @e[type=minecraft:drowned,tag=drowned_king] at @s run return run function entities:bosses/sea_king/get_damage
tag @s remove player_for_anger