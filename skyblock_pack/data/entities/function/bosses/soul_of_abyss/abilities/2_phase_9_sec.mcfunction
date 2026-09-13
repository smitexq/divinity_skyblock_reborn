function dc:get_call {tick:180, command:"function entities:bosses/soul_of_abyss/abilities/2_phase_9_sec", requirePos:false, requireEntity:true}

execute if entity @s[tag=load2phase] run return 0
execute if entity @s[tag=StartHexagon] run return 0

execute store result score *var1 variables run random value 0..9 dsb:bosses/soul_of_abyss/abilities/hexagon
execute if score *var1 variables matches 0..5 run function entities:bosses/soul_of_abyss/abilities/hexagon/start