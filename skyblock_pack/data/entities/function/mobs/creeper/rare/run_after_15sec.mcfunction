function dc:get_call {tick:300, command:"function entities:mobs/creeper/rare/run_after_15sec", requirePos:false, requireEntity:true}

execute unless entity @p[distance=..25] run return 0

execute store result score #chance variables run random value 0..9

execute if score #chance variables matches 0 run return run function entities:mobs/abilities/teleport/start
execute if score #chance variables matches 1..2 run return run function entities:mobs/abilities/powerful_blast/start
execute if score #chance variables matches 3 if entity @p[distance=5..] run return run function entities:mobs/abilities/throw_mini_tnt/start