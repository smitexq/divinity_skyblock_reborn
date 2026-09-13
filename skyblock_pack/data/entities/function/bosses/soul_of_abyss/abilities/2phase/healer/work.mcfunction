function dc:get_call {tick:60, command:"function entities:bosses/soul_of_abyss/abilities/2phase/healer/work", requirePos:false, requireEntity:true}

scoreboard players set @e[type=ghast, tag=SoulOfAbyss_HELER_push] RecursionDepth 0
execute as @e[type=ghast, tag=SoulOfAbyss_HELER_push] at @s facing entity @e[type=minecraft:piglin_brute, tag=SoulOfAbyss] eyes run function entities:bosses/soul_of_abyss/abilities/2phase/healer/loop

function entities:bosses/soul_of_abyss/abilities/2phase/healer/heal