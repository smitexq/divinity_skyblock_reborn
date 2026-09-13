advancement revoke @s only dsb:events/rest_time/fishing_item

#Восстановление
execute unless predicate dsb:events/player_not_learn run return fail

scoreboard players remove @s RestTimeAI 60
execute if score @s RestTimeAI matches ..0 run scoreboard players set @s RestTimeAI 0