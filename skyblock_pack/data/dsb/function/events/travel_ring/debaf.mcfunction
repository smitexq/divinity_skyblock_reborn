#Заметка на кольцо странника
advancement grant @a only dsb:notes/wanderer_ring
#


title @s actionbar {"translate":"dsb.events.travel.without_rings","color":"red"}

#Если игрок вышел на 157-162 блока то иссушение
$execute if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"distance": {"horizontal": {"min": $(min),"max": $(max)}}}} run return run effect give @s minecraft:wither 2 4 
$execute unless predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"distance": {"horizontal": {"min": $(max)}}}} run return 0

#Если вышел еще дальше, то усиляем эффекты
effect give @s minecraft:wither 2 8
effect give @s minecraft:weakness 4 0
effect give @s minecraft:darkness 3 0



#Достижение
execute if data entity @s {Health:0.0f} run advancement grant @s only dsb:skyblock/travel/border