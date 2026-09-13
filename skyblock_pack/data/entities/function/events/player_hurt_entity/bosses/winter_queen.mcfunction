advancement revoke @s only entities:player_hurt_entity/bosses/damage_winter_queen

execute store result score *var1 variables run random value 0..99 dsb:winter_queen_get_damage

#7% нанести урон в первой фазе
execute if entity @e[type=minecraft:stray, tag=WinterBoss, tag=!2phase] if score *var1 variables matches ..6 run function entities:bosses/winter/conditions/phase/player_damage
#6% откинуть во второй фазе
execute as @e[type=minecraft:stray, tag=WinterBoss, tag=2phase] at @s if score *var1 variables matches ..5 run function entities:bosses/winter/abilities/knockback/start

#помечаем игрока, чтобы на него перевести агр босса
tag @s add player_for_anger
execute as @e[type=minecraft:stray,tag=WinterBoss] at @s run return run function entities:bosses/winter/get_damage
tag @s remove player_for_anger