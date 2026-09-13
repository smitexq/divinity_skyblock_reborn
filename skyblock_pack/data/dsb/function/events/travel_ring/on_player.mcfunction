#Во время босс файта другие требования
execute if score *count_bosses gameplay matches 1.. run return run function dsb:events/travel_ring/in_boss_fight


#Если игрок пытается выйти за второе кольцо островов без каких либо колец
execute if entity @s[scores={TravelLevel=0}] positioned 0 0 0 unless predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"distance": {"horizontal": {"min": 0,"max": 160}}}} run return run function dsb:events/travel_ring/debaf {min:167, max:172}

#Если нет кольца и находится в начальной зоне
execute if entity @s[scores={TravelLevel=0}] run return 0

#Если игрок только с первым уровнем кольца, но пытается выйти дальше
execute unless entity @s[scores={TravelLevel=2..}] positioned 0 0 0 unless predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"distance": {"horizontal": {"min": 0,"max": 800}}}} run return run function dsb:events/travel_ring/debaf {min:807, max:812}

execute unless entity @s[scores={TravelLevel=3..}] positioned 0 0 0 unless predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"distance": {"horizontal": {"min": 0,"max": 1400}}}} run return run function dsb:events/travel_ring/debaf {min:1407, max:1412}