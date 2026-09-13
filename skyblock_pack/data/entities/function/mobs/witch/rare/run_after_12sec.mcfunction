function dc:get_call {tick:240, command:"function entities:mobs/witch/rare/run_after_12sec", requirePos:false, requireEntity:true}

execute unless entity @p[distance=..20] run return 0

execute store result score #chance variables run random value 0..9
execute if score #chance variables matches 0 run function entities:mobs/abilities/clone/start {mob:"witch"}