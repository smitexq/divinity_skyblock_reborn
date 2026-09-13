#Запускается от достижения player_killed_entity
#Будет запускаться от таблицы лута
#loot spawn ~ ~ ~ loot minecraft:chests/nether_bridge
#execute as @e[type=spider,predicate=rings:test] at @s run function rings:activate_ring/red_sun/on_entity