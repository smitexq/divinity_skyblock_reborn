#-1 призывалка
item modify entity @s weapon.mainhand food:remove_item

scoreboard players set *summon SoulOfAbyss 1

#Первая анимация
execute unless score *showAnimation SoulOfAbyss matches 1 run return run function animation:soul_of_abyss/start

execute as @e[type=marker, tag=SoulOfAbyssArenaMiddle] at @s run function animation:soul_of_abyss/prepend_summon_animation