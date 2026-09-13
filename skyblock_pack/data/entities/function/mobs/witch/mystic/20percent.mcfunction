function entities:mobs/abilities/knockback/start


# function dc:get_call {tick:10, command:"function entities:mobs/abilities/cobweb/start", requirePos:false, requireEntity:true}

execute store result score #chance variables run random value 0..2
#50% кинуть тнт
execute if score #chance variables matches 0..1 run return run function dc:get_call {tick:25, command:"function entities:mobs/abilities/throw_mini_tnt/start", requirePos:false, requireEntity:true}
#50%
execute if score #chance variables matches 2 run return run function dc:get_call {tick:25, command:"function entities:mobs/abilities/summon_fangs/start", requirePos:false, requireEntity:true}