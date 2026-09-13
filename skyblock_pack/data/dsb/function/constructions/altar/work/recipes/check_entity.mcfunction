execute at @e[type=interaction, tag=initAltar] positioned ~ ~-2 ~ unless entity @e[type=chicken, distance=..4.5] run return run function dsb:constructions/altar/work/recipes/error {msg:"dsb.events.altar.chicken"}

return 1