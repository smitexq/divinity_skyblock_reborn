###ВСЕ ПРОВЕРКИ БЕСПОЛЕЗНЫ, ЕСЛИ ОБЛАСТЬ НЕ ПРОГРУЖЕНА
forceload add ~ ~

#Если вышли за предел
execute unless predicate {"condition": "minecraft:location_check", "predicate": {"position": {"y": {"max": 100}}}} run return run function entities:events/traders/spawn/go_next
#Если не пустое пространство, то пытаемся спавнить выше
# execute unless predicate dsb:traders/empty_air positioned ~ ~5 ~ run return run function entities:events/traders/spawn/check_pos
execute positioned ~-6 ~ ~-6 unless predicate entities:traders/empty_air positioned ~6 ~5 ~6 run return run function entities:events/traders/spawn/check_pos

###Спавн торговцев
execute in minecraft:overworld run function entities:events/traders/spawn/complete