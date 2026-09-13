execute store result score *var1 variables run random value 1..3

execute if score *var1 variables matches 1 run return run summon enderman ~ ~ ~ {Tags:["entity"]}
execute if score *var1 variables matches 2 run return run summon witch ~ ~ ~ {Tags:["entity"]}
execute if score *var1 variables matches 3 run return run summon cave_spider ~ ~ ~ {Tags:["entity"]}