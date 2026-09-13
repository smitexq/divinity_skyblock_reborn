function dc:get_call {tick:80, command:"function entities:bosses/sea_king/abilities/1_phase_4_sec", requirePos:false, requireEntity:true}

execute if entity @p[distance=..8] run return 0

execute store result score *var1 variables run random value 0..9 dsb:drowned_king_abilities
execute if score *var1 variables matches 0..1 run function entities:mobs/abilities/summon_fangs/start