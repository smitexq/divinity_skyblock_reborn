# нет никакого кольца, но игрок пытается выйти за первый уровень (при этом он начал босс файт как-то)
execute if score *max_level_ring TravelLevel matches 0 positioned 0 0 0 unless predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"distance": {"horizontal": {"min": 0,"max": 160}}}} run return run function dsb:events/travel_ring/debaf {min:167, max:172}

# Было у кого-то первое кольцо, но пытается выйти дальше
execute if score *max_level_ring TravelLevel matches 1 positioned 0 0 0 unless predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"distance": {"horizontal": {"min": 0,"max": 800}}}} run return run function dsb:events/travel_ring/debaf {min:807, max:812}

# Второе
execute if score *max_level_ring TravelLevel matches 2 positioned 0 0 0 unless predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"distance": {"horizontal": {"min": 0,"max": 1400}}}} run return run function dsb:events/travel_ring/debaf {min:1407, max:1412}

# В ином случае, если было достигнуто третье кольцо, то ничего не делать