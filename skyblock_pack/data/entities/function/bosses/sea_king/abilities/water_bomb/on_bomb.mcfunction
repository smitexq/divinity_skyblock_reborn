#Время до взрыва
function dc:get_call {tick:15, command:"data modify entity @s CustomName set from storage dsb:bosses WaterBomb.name.stage_2", requirePos:false, requireEntity:true}
function dc:get_call {tick:30, command:"data modify entity @s CustomName set from storage dsb:bosses WaterBomb.name.stage_3", requirePos:false, requireEntity:true}

#Взрыв
function dc:get_call {tick:45, command:"function entities:bosses/sea_king/abilities/water_bomb/explode", requirePos:false, requireEntity:true}