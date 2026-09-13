###Могилки
#Спавнит могилку с лутом игрока
execute as @a[scores={death=1..}] at @s run function entities:player/spawn_grave
###

#Частицы на месте призыва мобов (Способки мини-боссов)
execute as @e[type=minecraft:marker,tag=mobSummon] at @s run particle minecraft:spit ~ ~0.2 ~ 0.1 0.1 0.1 0.01 1

###Морской царь
execute if score *summon SeaKing matches 1 run function entities:bosses/sea_king/tick 
###

###Душа Бездны
execute if score *summon SoulOfAbyss matches 1 run function entities:bosses/soul_of_abyss/tick
###

###Королева Элеум Лойс
execute if score *summon WinterQueen matches 1 run function entities:bosses/winter/tick
#мобы вниз
execute as @e[type=#entities:hostile_mobs, tag=!WinterQueenMob, tag=!WinterBoss] at @s if dimension gen:winter_queen run tp @s ~ ~-1000 ~
###


#Нельзя сажать боссов в лодку
execute as @e[type=#entities:hostile_mobs, tag=Boss] run ride @s dismount
execute as @e[type=#entities:hostile_mobs, tag=entity_boss] run ride @s dismount


#Агр мобов из крепости Элеум Лойс (волки, големы)
execute as @e[type=iron_golem, tag=frozen_golem] at @s run function entities:mobs/angry
execute as @e[type=wolf, tag=ice_hound] at @s run function entities:mobs/angry


#телепорт криперов и мини-боссов из данжей
execute as @e[type=minecraft:creeper] at @s if function gen:check_if_adventure run tp @s ~ ~-1000 ~
execute as @e[type=#entities:hostile_mobs, tag=entity_boss] at @s if function gen:check_if_adventure run tp @s ~ ~-1000 ~