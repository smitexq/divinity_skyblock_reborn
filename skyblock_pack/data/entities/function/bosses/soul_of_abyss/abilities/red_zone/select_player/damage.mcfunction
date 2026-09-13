tag @s add SoulOfAbyss_getDamage

effect give @s minecraft:darkness 4 0
damage @s 12 minecraft:starve
effect give @s minecraft:wither 6 1

function dc:get_call {tick:20, command:"tag @s remove SoulOfAbyss_getDamage", requirePos:false, requireEntity:true}