forceload add ~ ~

execute positioned ~1 ~ ~1 if predicate dsb:events/waystone_place_to_tp run return run function dsb:constructions/waystone/target/tp_end
execute positioned ~-1 ~ ~1 if predicate dsb:events/waystone_place_to_tp run return run function dsb:constructions/waystone/target/tp_end
execute positioned ~1 ~ ~-1 if predicate dsb:events/waystone_place_to_tp run return run function dsb:constructions/waystone/target/tp_end
execute positioned ~-1 ~ ~-1 if predicate dsb:events/waystone_place_to_tp run return run function dsb:constructions/waystone/target/tp_end

execute positioned ~1 ~1 ~1 if predicate dsb:events/waystone_place_to_tp run return run function dsb:constructions/waystone/target/tp_end
execute positioned ~-1 ~1 ~1 if predicate dsb:events/waystone_place_to_tp run return run function dsb:constructions/waystone/target/tp_end
execute positioned ~1 ~1 ~-1 if predicate dsb:events/waystone_place_to_tp run return run function dsb:constructions/waystone/target/tp_end
execute positioned ~-1 ~1 ~-1 if predicate dsb:events/waystone_place_to_tp run return run function dsb:constructions/waystone/target/tp_end

execute positioned ~1 ~1 ~ if predicate dsb:events/waystone_place_to_tp run return run function dsb:constructions/waystone/target/tp_end
execute positioned ~-1 ~1 ~ if predicate dsb:events/waystone_place_to_tp run return run function dsb:constructions/waystone/target/tp_end
execute positioned ~ ~1 ~-1 if predicate dsb:events/waystone_place_to_tp run return run function dsb:constructions/waystone/target/tp_end
execute positioned ~ ~1 ~-1 if predicate dsb:events/waystone_place_to_tp run return run function dsb:constructions/waystone/target/tp_end

tellraw @s {"translate":"dsb.events.waystone.tp_fail","color":"red"}

forceload remove ~ ~