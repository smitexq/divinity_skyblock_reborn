#Замена предмета
$$(cmd)

#Минус души
execute store result score *var1 variables run data get storage dsb:cts Altar.SoulsCount
$execute store result storage dsb:cts Altar.SoulsCount int 1 run scoreboard players remove *var1 variables $(souls)

execute as @e[type=interaction, tag=initAltar] at @s run function dc:gu/generate
execute as @e[type=interaction, tag=initAltar] at @s run function dsb:constructions/altar/work/vizual with storage gu:main