tag @s remove camera
gamemode adventure @s

execute at @e[type=marker, tag=SoulOfAbyssPlayerMarker] run spreadplayers ~ ~ 0.2 1.5 false @s
rotate @s facing entity @e[type=minecraft:marker, tag=SoulOfAbyssArenaMiddle, limit=1]