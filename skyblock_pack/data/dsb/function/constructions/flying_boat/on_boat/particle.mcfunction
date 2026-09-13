execute if entity @s[tag=!driver] run return 0

particle minecraft:campfire_cosy_smoke ^ ^0.6 ^-1

function dc:get_call {tick:20, command:"function dsb:constructions/flying_boat/on_boat/particle", requirePos:false, requireEntity:true}