execute store result score *var1 variables run random value 1..5

execute if score *var1 variables matches 1 run return run summon zombie ~ ~ ~ {Tags:["entity"]}
execute if score *var1 variables matches 2 run return run summon skeleton ~ ~ ~ {Tags:["entity"],HandItems:[{id:"minecraft:bow",count:1},{}]}
execute if score *var1 variables matches 3 run return run summon creeper ~ ~ ~ {Tags:["entity"]}
execute if score *var1 variables matches 4 run return run summon spider ~ ~ ~ {Tags:["entity"]}
execute if score *var1 variables matches 5 run return run summon slime ~ ~ ~ {Tags:["entity"], Size:2}