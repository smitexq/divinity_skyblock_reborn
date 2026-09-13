scoreboard players add @s RecursionDepth 1

particle minecraft:entity_effect{color:[0.63f,0.012f,0.85f,1f]} ~ ~ ~ 0 0 0 0 1 force

execute unless block ~ ~ ~ #minecraft:air run return 0

execute if score @s RecursionDepth matches 80 run return 0
execute positioned ^ ^ ^0.5 run function entities:bosses/soul_of_abyss/abilities/hexagon/prepend_loop