advancement revoke @s only dsb:skyblock/development/kill_a_mob

scoreboard players add @s dsb.adv.kill_mobs 1

###Отнимаем усталость. Восстановление
#Если игрок НЕ в библиотеке, то отнимаем время отдыха
execute unless predicate dsb:events/player_not_learn run return fail

scoreboard players remove @s RestTimeAI 20
execute if score @s RestTimeAI matches ..0 run scoreboard players set @s RestTimeAI 0
###