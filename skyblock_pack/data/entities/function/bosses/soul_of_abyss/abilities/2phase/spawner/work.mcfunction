function dc:get_call {tick:300, command:"function entities:bosses/soul_of_abyss/abilities/2phase/spawner/work", requirePos:false, requireEntity:true}

execute summon marker run function entities:bosses/soul_of_abyss/abilities/2phase/spawner/on_marker
#40% призвать еще одного визер скелета
execute store result score *var1 variables run random value 0..9 dsb:bosses/soul_of_abyss/spawner/chance_wither
execute if score *var1 variables matches 0..3 summon marker run function entities:bosses/soul_of_abyss/abilities/2phase/spawner/on_marker