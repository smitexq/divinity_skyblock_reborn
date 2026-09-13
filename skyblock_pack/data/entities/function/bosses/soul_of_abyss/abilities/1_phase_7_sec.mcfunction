function dc:get_call {tick:140, command:"function entities:bosses/soul_of_abyss/abilities/1_phase_7_sec", requirePos:false, requireEntity:true}

execute store result score *var1 variables run random value 0..99 dsb:bosses/soul_of_abyss/abilities/loosing_control
execute if score *var1 variables matches 0..15 as @a[distance=..40] run function entities:mobs/abilities/losing_control/start