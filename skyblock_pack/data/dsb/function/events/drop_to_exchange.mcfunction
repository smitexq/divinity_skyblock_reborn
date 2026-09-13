advancement revoke @s only dsb:events/drop_to_exchanger

scoreboard players reset @s dropCobblestone
scoreboard players reset @s dropGrassBlock
scoreboard players reset @s dropSoulSand

function dc:gu/generate
execute positioned ~ ~1.8 ~ as @e[type=item, distance=..0.5, sort=nearest, limit=1] run function dsb:events/set_uuid with storage gu:main