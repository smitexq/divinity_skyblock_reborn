#Процент хп
function entities:mobs/abilities/get_procent_health
function entities:bosses/soul_of_abyss/conditions/bossbar_visible

#2 фаза
execute if entity @s[tag=!2phase] if score #hp variables matches ..50 at @e[type=marker, tag=SoulOfAbyssArenaMiddle] run return run function entities:bosses/soul_of_abyss/conditions/2phase/start

#Споры
execute if entity @s[tag=!StartSporeBlossom] store result score *var1 variables run random value 0..99 dsb:bosses/soul_of_abyss/abilities/spore_blossom
execute if entity @s[tag=!StartSporeBlossom] if score *var1 variables matches 0..23 run function entities:bosses/soul_of_abyss/abilities/spore_blossom/start
