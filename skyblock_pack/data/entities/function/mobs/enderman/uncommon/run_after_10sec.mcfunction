function dc:get_call {tick:200, command:"function entities:mobs/enderman/uncommon/run_after_10sec", requirePos:false, requireEntity:true}

execute unless entity @p[distance=..15] run return 0

execute store result score #chance variables run random value 0..1
execute if score #chance variables matches 0 as @a[distance=..15] at @s run function entities:mobs/abilities/losing_control/start