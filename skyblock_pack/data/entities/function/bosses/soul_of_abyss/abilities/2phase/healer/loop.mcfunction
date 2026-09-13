scoreboard players add @s RecursionDepth 1

particle minecraft:wax_on

execute if score @s RecursionDepth matches 60 run return 0
# execute if entity @e[type=minecraft:piglin_brute, tag=SoulOfAbyss, distance=..1] run return 0

execute positioned ^ ^ ^0.25 run function entities:bosses/soul_of_abyss/abilities/2phase/healer/loop