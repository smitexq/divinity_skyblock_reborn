execute if entity @s[tag=!WearingAmuletOfLuck] run return 0
function dc:get_call {tick:40, command:"function rings:activate_ring/amulet_of_luck/give_effect", requirePos:false, requireEntity:true}

execute if entity @s[tag=BlockLuckAmuletActive] run return 0

function food:tea/green/luck_level/1 {time:3}