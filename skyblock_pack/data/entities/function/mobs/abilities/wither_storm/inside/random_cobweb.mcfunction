#Шанс 25%, что на этом месте появится паутина
execute store result score *var1 variables run random value 0..3
execute if score *var1 variables matches 0 run setblock ~ ~ ~ cobweb