scoreboard players remove @s WinterQueenLines 1

$execute positioned $(offset) summon marker run function entities:bosses/winter/abilities/lines/raycast/prepend_loop
#Через 15 тиков выстрел
function dc:get_call {tick:15, command:"function entities:bosses/winter/abilities/lines/raycast/set_values_loop", requirePos:true, requireEntity:false}

$execute if score @s WinterQueenLines matches 1.. positioned $(offset) run function entities:bosses/winter/abilities/lines/new_pos {offset:"$(offset)"}