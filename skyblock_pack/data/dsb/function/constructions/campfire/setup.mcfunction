advancement revoke @s only dsb:events/set_campfire

scoreboard players set #temp RecursionDepth 0
execute anchored eyes positioned ^ ^ ^0.01 run function dsb:constructions/campfire/loop