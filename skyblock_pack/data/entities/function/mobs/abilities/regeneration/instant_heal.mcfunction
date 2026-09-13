#Выбираем сколько хп отхилить
execute store result score *var1 variables run data get entity @s Health
execute store result score *var2 variables run random value 6..15
execute store result entity @s Health float 1 run scoreboard players operation *var1 variables += *var2 variables

particle dust{color:[1f,0f,0f],scale:0.8f} ~ ~ ~ 0.4 0.5 0.4 0.1 15 force
particle minecraft:heart ~ ~1 ~ 0.4 0.5 0.4 0 3 force