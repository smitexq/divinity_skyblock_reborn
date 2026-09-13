tag @s add entity

#Превращение в утопленника в дождь
execute if entity @s[type=minecraft:zombie] if predicate entities:rain store result score *var1 variables run random value 0..99
execute if entity @s[type=minecraft:zombie] if predicate entities:rain if score *var1 variables matches 0..14 run return run function entities:spawn_drowned

#Если рядом есть фонарь мира, то босса не будет
execute if entity @e[type=minecraft:interaction, tag=initLanternOfPeace, tag=BlockingBossSpawn, distance=..16.5] run return 0
execute if entity @e[type=minecraft:interaction, tag=initLanternOfPeace, tag=upgrade, tag=BlockingBossSpawn, distance=..24.5] run return 0

#Шанс что он будет мини-боссом
execute store result score *var1 variables run random value 0..9999 dsb:bosses
execute if score *var1 variables matches 0..99 run tag @s add uncommon
execute if score *var1 variables matches 100..169 run tag @s add rare
execute if score *var1 variables matches 170..199 run tag @s add mystic

#Если не прокнул ни один шанс, то заканчиваем
execute unless score *var1 variables matches 0..199 run return 0
tag @s add entity_boss

#Случайный эффект заражения
function entities:bad_effect

#Определение типа моба
execute if entity @s[type=minecraft:zombie] run return run function entities:mobs/zombie/main
execute if entity @s[type=minecraft:skeleton] run return run function entities:mobs/skeleton/main
execute if entity @s[type=minecraft:creeper] run return run function entities:mobs/creeper/main
execute if entity @s[type=minecraft:spider] run return run function entities:mobs/spider/main
execute if entity @s[type=minecraft:enderman] run return run function entities:mobs/enderman/main
execute if entity @s[type=minecraft:witch] run return run function entities:mobs/witch/main
execute if entity @s[type=minecraft:slime] run return run function entities:mobs/slime/main
execute if entity @s[type=minecraft:blaze] run return run function entities:mobs/blaze/main

execute if entity @s[type=minecraft:husk] run return run function entities:mobs/zombie/main
execute if entity @s[type=minecraft:drowned] run return run function entities:mobs/zombie/main

execute if entity @s[type=minecraft:bogged] run return run function entities:mobs/skeleton/main
execute if entity @s[type=minecraft:stray] run return run function entities:mobs/skeleton/main

execute if entity @s[type=minecraft:magma_cube] run return run function entities:mobs/slime/main