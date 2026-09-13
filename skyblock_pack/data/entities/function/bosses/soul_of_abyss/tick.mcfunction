#всех мобов за пределами арены скидываем в пропость
execute at @e[type=marker, tag=SoulOfAbyssArenaMiddle] positioned ~-50 ~-50 ~-50 as @e[type=#entities:hostile_mobs, dx=99, dy=99, dz=99, tag=!Boss, tag=!SoulOfAbyssMob] at @s if function gen:check_if_adventure run tp @s ~ ~-1000 ~


###Перед призывом опускаем маркер для призыва
execute as @e[type=marker, tag=PrependSummonSoulOfAbyss] at @s run tp @s ~ ~-0.075 ~
execute as @e[type=marker, tag=PrependSummonSoulOfAbyss] at @s run particle minecraft:squid_ink ~ ~ ~ 1.5 1 1.5 0 20 force
###


###Ambient
execute as @e[type=piglin_brute, tag=SoulOfAbyss] at @s run particle minecraft:large_smoke ~ ~1 ~ 0.4 0.5 0.4 0 3 force
###


#Копируем высоту игрока на которого заагрен
execute as @e[type=armor_stand, tag=SoulOfAbyssShadow, tag=!particle] run data modify entity @s Pos[1] set from entity @p[tag=SoulOfAbyssSelect] Pos[1]

###Координата по X. + частицы, если время появления стены
data modify entity @e[type=armor_stand, tag=SoulOfAbyssShadow, tag=!particle,tag=1,limit=1] Pos[2] set from entity @p[tag=SoulOfAbyssSelect] Pos[2]
execute at @e[type=armor_stand, tag=SoulOfAbyssShadow, tag=particle,tag=1,limit=1] run particle dust{color:[1f,0f,0f],scale:3f} ~ ~1 ~ 12 0.5 0 0 15 normal
#Относительно позиции тени кидаем линии по 42 блока в каждую сторону и проверяем попадает ли на нее игрок. При этом он должен быть так же на АРЕНЕ!
execute at @e[type=armor_stand, tag=SoulOfAbyssShadow, tag=damage,tag=1,limit=1] positioned ~-42 ~ ~ as @a[tag=!SoulOfAbyss_getDamage, gamemode=!spectator, dx=83,dy=1] at @s if entity @e[type=marker,tag=SoulOfAbyssArenaMiddle, distance=..24] run function entities:bosses/soul_of_abyss/abilities/red_zone/select_player/damage
###

###По Z
data modify entity @e[type=armor_stand, tag=SoulOfAbyssShadow, tag=!particle,tag=2,limit=1] Pos[0] set from entity @p[tag=SoulOfAbyssSelect] Pos[0]
execute at @e[type=armor_stand, tag=SoulOfAbyssShadow, tag=particle,tag=2,limit=1] run particle dust{color:[1f,0f,0f],scale:3f} ~ ~1 ~ 0 0.5 12 0 15 normal

execute at @e[type=armor_stand, tag=SoulOfAbyssShadow, tag=damage,tag=2,limit=1] positioned ~ ~ ~-42 as @a[tag=!SoulOfAbyss_getDamage, gamemode=!spectator, dz=83,dy=1] at @s if entity @e[type=marker,tag=SoulOfAbyssArenaMiddle, distance=..24] run function entities:bosses/soul_of_abyss/abilities/red_zone/select_player/damage
###



###Spore
execute at @e[type=marker, tag=SoulOfAbyssSpore] run particle crimson_spore ~ ~1 ~ 1.5 1.5 1.5 0 2 force
execute at @e[type=marker, tag=SoulOfAbyssSpore, tag=!stage2] run particle dust{color:[0.76f,0.047f,0.592f],scale:2f} ~ ~1 ~ 0.2 0.2 0.2 0 2 force
execute at @e[type=marker, tag=SoulOfAbyssSpore, tag=stage2] run particle dust{color:[0.76f,0.047f,0.592f],scale:4f} ~ ~1 ~ 0.8 0.8 0.8 0 4 force
###


