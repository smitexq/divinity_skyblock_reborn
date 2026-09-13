#Шанс на заражение 30%
execute store result score *var1 variables run random value 0..9
execute unless score *var1 variables matches 0..2 run return 0

#Эффект
execute store result score *var1 variables run random value 1..4

execute if score *var1 variables matches 1 run return run effect give @s minecraft:oozing 300 0
execute if score *var1 variables matches 2 run return run effect give @s minecraft:weaving 300 0
execute if score *var1 variables matches 3 run return run effect give @s minecraft:infested 300 0
execute if score *var1 variables matches 4 run return run effect give @s minecraft:wind_charged 300 0