function dc:get_call {tick:300, command:"function entities:mobs/witch/rare/run_after_15sec", requirePos:false, requireEntity:true}

execute unless entity @p[distance=..13] run return 0

execute store result score #chance variables run random value 0..99
execute if score #chance variables matches 0..11 run function entities:mobs/abilities/charged_ray_poison/start