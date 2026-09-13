particle minecraft:wax_off ~ ~ ~ 0 0 0 0 1 force

scoreboard players add @s RecursionDepth 1
execute if score @s RecursionDepth matches 100 run return run kill @s

execute positioned ^ ^ ^0.5 run function entities:bosses/winter/abilities/lines/raycast/prepend_loop