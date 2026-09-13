#Шанс 40%, что на этом месте появится огонь
execute store result score *var1 variables run random value 1..5
execute if score *var1 variables matches 1..2 run setblock ~ ~ ~ fire