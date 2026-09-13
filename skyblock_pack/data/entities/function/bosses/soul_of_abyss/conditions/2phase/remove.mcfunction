kill @e[type=ghast, tag=2phase]
kill @e[type=text_display, tag=SoulOfAbyss_HP]

#Удаляем точки
execute at @e[type=marker, tag=SoulOfAbyssArenaMiddle] positioned ~-12 ~ ~3 run fill ~-2 ~ ~-2 ~2 ~2 ~2 air
execute at @e[type=marker, tag=SoulOfAbyssArenaMiddle] positioned ~12 ~ ~-3 run fill ~-2 ~ ~-2 ~2 ~2 ~2 air
execute at @e[type=marker, tag=SoulOfAbyssArenaMiddle] positioned ~-3 ~ ~-12 run fill ~-2 ~ ~-2 ~2 ~2 ~2 air
execute at @e[type=marker, tag=SoulOfAbyssArenaMiddle] positioned ~3 ~ ~12 run fill ~-2 ~ ~-2 ~2 ~2 ~2 air

#Удаляем все задачи на вторую фазу
data remove storage dsb:dc Tasks[{command:"function entities:bosses/soul_of_abyss/conditions/2phase/particle"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/soul_of_abyss/abilities/2phase/spawner/work"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/soul_of_abyss/abilities/2phase/healer/work"}]

#Босс уязвим
data modify entity @e[type=minecraft:piglin_brute, tag=SoulOfAbyss, limit=1] NoAI set value 0b
data modify entity @e[type=minecraft:piglin_brute, tag=SoulOfAbyss, limit=1] Invulnerable set value 0b
tag @e remove load2phase

execute as @e[type=minecraft:piglin_brute, tag=SoulOfAbyss] at @s as @a[distance=..35] at @s run playsound minecraft:entity.warden.heartbeat ambient @s ~ ~ ~ 2 1
execute as @e[type=minecraft:piglin_brute, tag=SoulOfAbyss] at @s as @a[distance=..40] at @s run playsound minecraft:block.sculk_shrieker.shriek ambient @s

#через некоторое время шестиугольник
execute as @e[type=minecraft:piglin_brute, tag=SoulOfAbyss] at @s run function dc:get_call {tick:140, command:"execute if entity @s[tag=!StartHexagon] run function entities:bosses/soul_of_abyss/abilities/hexagon/start", requirePos:false, requireEntity:true}