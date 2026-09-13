function dc:get_call {tick:240, command:"function entities:mobs/spider/rare/run_after_12sec", requirePos:false, requireEntity:true}

execute unless entity @p[distance=..16] run return 0
function entities:mobs/abilities/web_weaver/start
# execute store result score #chance variables run random value 0..9
# execute if score #chance variables matches 0..5 run function entities:mobs/abilities/web_weaver/start

execute store result score #chance variables run random value 0..9
execute if score #chance variables matches 0..2 as @a[distance=..16] run function entities:mobs/abilities/losing_control/start