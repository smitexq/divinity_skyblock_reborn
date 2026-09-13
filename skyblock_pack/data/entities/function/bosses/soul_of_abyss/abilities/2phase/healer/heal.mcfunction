#хп * 10
execute store result score *var1 variables run data get entity @s Health 10

#Кол-во хилеров
scoreboard players set *var2 variables 0
execute as @e[type=ghast, tag=SoulOfAbyss_HELER_push] run scoreboard players add *var2 variables 1
#Лечение от каждого
execute store result entity @s Health float 0.1 run scoreboard players add *var1 variables 30
execute if score *var2 variables matches 2 store result entity @s Health float 0.1 run scoreboard players add *var1 variables 30

function entities:bosses/soul_of_abyss/conditions/bossbar_visible