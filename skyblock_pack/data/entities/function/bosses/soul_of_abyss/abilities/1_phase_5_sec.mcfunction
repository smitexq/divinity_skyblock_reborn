function dc:get_call {tick:100, command:"function entities:bosses/soul_of_abyss/abilities/1_phase_5_sec", requirePos:false, requireEntity:true}

# execute if entity @s[tag=load2phase] run return 0
execute if entity @s[tag=StartRedZone] run return 0

execute store result score *var1 variables run random value 0..9 dsb:bosses/soul_of_abyss/abilities/red_zone
execute if score *var1 variables matches 0..3 run function entities:bosses/soul_of_abyss/abilities/red_zone/start