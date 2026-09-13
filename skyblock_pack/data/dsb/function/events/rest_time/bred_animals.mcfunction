function dc:get_call {tick:200, command:"advancement revoke @s only dsb:rest_time/bred_animals", requirePos:false, requireEntity:true}

#Восстановление
#Если игрок НЕ в библиотеке, то отнимаем время отдыха
execute unless predicate dsb:events/player_not_learn run return fail

scoreboard players remove @s RestTimeAI 80
execute if score @s RestTimeAI matches ..0 run scoreboard players set @s RestTimeAI 0