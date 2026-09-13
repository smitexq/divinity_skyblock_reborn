function dc:get_call {tick:70, command:"function entities:bosses/sea_king/abilities/2_phase_4_sec", requirePos:false, requireEntity:true}

execute if entity @p[distance=..3.5] run return 0

execute store result score *var1 variables run random value 0..1 dsb:drowned_king_abilities
execute if score *var1 variables matches 0 run function entities:bosses/sea_king/abilities/ray/start