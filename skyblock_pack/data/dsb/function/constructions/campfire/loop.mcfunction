scoreboard players add #temp RecursionDepth 1
execute if score #temp RecursionDepth matches 575 run return 0

execute if block ~ ~ ~ campfire align xyz positioned ~0.5 ~ ~0.5 summon marker run return run function dsb:constructions/campfire/on_marker
execute positioned ^ ^ ^0.01 run function dsb:constructions/campfire/loop