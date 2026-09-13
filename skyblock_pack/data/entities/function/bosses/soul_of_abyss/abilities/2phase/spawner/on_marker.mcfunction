execute positioned as @s run spreadplayers ~ ~ 1 6 false @s
data modify entity @s Pos[1] set from entity @e[type=marker, tag=SoulOfAbyssArenaMiddle, limit=1] Pos[1]

execute positioned as @s run summon wither_skeleton ~ ~ ~ {Team:"SoulOfAbyss", Tags:["entity","SoulOfAbyssArena_witherSkeleton","SoulOfAbyssMob"], DeathLootTable:"", LeftHanded:0b,HandItems:[{id:"minecraft:stone_sword",count:1},{}],HandDropChances:[0F,0F],attributes:[{id:"minecraft:follow_range",base:60},{id:"minecraft:max_health",base:30}, {id:"minecraft:movement_speed",base:0.29}], ArmorItems:[{},{},{id:"minecraft:chainmail_chestplate",count:1},{}],ArmorDropChances:[0F,0F,0F,0F], Health:30}

execute positioned as @s run particle minecraft:raid_omen ~ ~1 ~ 0.4 0.4 0.4 0 10 force

kill @s