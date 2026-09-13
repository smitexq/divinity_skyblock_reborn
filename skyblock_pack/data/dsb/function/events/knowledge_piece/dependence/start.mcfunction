scoreboard players add @s know.piece_to_dependence 1

execute if score @s know.piece_to_dependence matches 3 run playsound minecraft:entity.witch.hurt ambient @s ~ ~ ~ 0.4
execute if score @s know.piece_to_dependence matches 3 run title @s actionbar {"translate":"dsb.events.prepend_dependence","color":"red"}
execute if score @s know.piece_to_dependence matches 4.. run return run function dsb:events/knowledge_piece/dependence/give

#Через 7 минут нужно удалить
function dc:get_call {tick:8400, command:"scoreboard players remove @s know.piece_to_dependence 1", requirePos:false, requireEntity:true}
#Нужно, чтобы после выдачи зависимости сработало повышение интеллекта
return 1