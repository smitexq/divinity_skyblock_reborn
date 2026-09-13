data modify storage dsb:cts Libraries[-1].Upgrades set value []

execute if predicate dsb:constructions/s.library/v1 positioned ~-1 ~ ~1 run return run function dsb:constructions/small_library/api/upgrades/facing/east
execute if predicate dsb:constructions/s.library/v2 positioned ~1 ~ ~1 run return run function dsb:constructions/small_library/api/upgrades/facing/north
execute if predicate dsb:constructions/s.library/v3 positioned ~1 ~ ~-1 run return run function dsb:constructions/small_library/api/upgrades/facing/west
execute if predicate dsb:constructions/s.library/v4 positioned ~-1 ~ ~-1 run return run function dsb:constructions/small_library/api/upgrades/facing/south


execute if predicate dsb:constructions/h.library/v1 positioned ~1 ~1 ~2 run return run function dsb:constructions/huge_library/api/upgrades/facing/north
execute if predicate dsb:constructions/h.library/v2 positioned ~-1 ~1 ~-2 run return run function dsb:constructions/huge_library/api/upgrades/facing/south
execute if predicate dsb:constructions/h.library/v3 positioned ~2 ~1 ~-1 run return run function dsb:constructions/huge_library/api/upgrades/facing/west
execute if predicate dsb:constructions/h.library/v4 positioned ~-2 ~1 ~1 run return run function dsb:constructions/huge_library/api/upgrades/facing/east