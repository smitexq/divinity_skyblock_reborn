#Шанс 35%
execute store result score *var1 variables run random value 1..20
execute if score *var1 variables matches 1..7 run setblock ~ ~ ~ fire