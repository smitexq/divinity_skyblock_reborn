execute if entity @s[tag=!driver] run data modify entity @s Motion[1] set value 0d

function dc:get_call {tick:40, command:"function dsb:constructions/flying_boat/on_entity", requirePos:false, requireEntity:true}