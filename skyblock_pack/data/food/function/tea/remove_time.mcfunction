###ЧАИ
execute if score @s TimeConsumeBirchTea matches 0.. run scoreboard players remove @s TimeConsumeBirchTea 1
execute if score @s TimeConsumeBirchTea matches 0 run function food:tea/birch/clear_effect

execute if score @s TimeConsumeBlackTea matches 0.. run scoreboard players remove @s TimeConsumeBlackTea 1
execute if score @s TimeConsumeBlackTea matches 0 run function food:tea/black/clear_effect

execute if score @s TimeConsumeGreenTea matches 0.. run scoreboard players remove @s TimeConsumeGreenTea 1
execute if score @s TimeConsumeGreenTea matches 0 run function food:tea/green/clear_effect

execute if score @s TimeConsumeSakuraTea matches 0.. run scoreboard players remove @s TimeConsumeSakuraTea 1
execute if score @s TimeConsumeSakuraTea matches 0 run function food:tea/sakura/clear_effect

execute if score @s TimeConsumeBerriesTea matches 0.. run scoreboard players remove @s TimeConsumeBerriesTea 1
execute if score @s TimeConsumeBerriesTea matches 0 run function food:tea/berries/clear_effect
###

#Для мирных мобов
execute if score @s InitTeam matches 0.. run scoreboard players remove @s InitTeam 1
execute if score @s InitTeam matches 0 run team leave @s

#Для квестов
execute if score @s QuestTime matches 1.. run scoreboard players remove @s QuestTime 1
#Активный квест, но прошло время выполнения
execute if score @s[tag=ActiveQuest] QuestTime matches 1800 run function entities:events/quest_villager/complete/fail
execute if score @s QuestTime matches 0 run function entities:events/quest_villager/unlock_quests

#Если игрок НЕ в библиотеке, то отнимаем время отдыха
execute if predicate dsb:events/player_not_learn if score @s RestTimeAI matches 1.. run scoreboard players remove @s RestTimeAI 1

###Зависимость от фрагментов
execute if entity @s[tag=!DependenceFromKnowPiece] run return 0

scoreboard players remove @s time_dependence 1
execute if score @s time_dependence matches 0 run function dc:gu/generate
execute if score @s time_dependence matches 0 run function dsb:events/knowledge_piece/dependence/clear with storage gu:main
###