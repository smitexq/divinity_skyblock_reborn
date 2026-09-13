#Шанс 30%, что на этом месте появится мертвая трава
execute store result score *var1 variables run random value 0..9
execute if score *var1 variables matches 0..2 run setblock ~ ~ ~ dead_bush