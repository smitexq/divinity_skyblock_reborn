execute as @e[type=armor_stand, tag=SeaKing_SpawnAnimation] at @s run tp @s ~ ~0.03 ~ ~20 ~
execute as @e[type=armor_stand, tag=SeaKing_SpawnAnimation] at @s run particle minecraft:end_rod ^ ^ ^1 0 0 0 0 1 force
execute as @e[type=armor_stand, tag=SeaKing_SpawnAnimation] at @s run particle minecraft:trial_omen ~ ~ ~ 0.5 1 0.5 2 1 force

execute as @e[type=#entities:hostile_mobs, tag=!Boss, tag=!SeaKingMob] at @s if function gen:check_if_adventure run tp @s ~ ~-1000 ~