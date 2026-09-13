function dc:get_call {tick:400, command:"function entities:mobs/creeper/rare/run_after_20sec", requirePos:false, requireEntity:true}

execute unless entity @p[distance=..20] run return 0

execute store result score #chance variables run random value 0..9

execute if score #chance variables matches 0 run return run function entities:mobs/abilities/ignite/start