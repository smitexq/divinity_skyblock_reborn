execute as @a[tag=ready] at @s run function gen:in_dungeons/frozen_castle/players/prepend_to_teleport

#Призыв Королевы
execute in gen:winter_queen positioned 0 60 0 run function dc:get_call {tick:280, command:"function entities:bosses/winter/summon", requirePos:true, requireEntity:false}

#Распределение игроков по арене
function dc:get_call {tick:101, command:"execute in gen:winter_queen run spreadplayers 0 0 5 20 under 61 false @a", requirePos:false, requireEntity:false}