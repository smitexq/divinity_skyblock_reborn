#Удаляем задачу
function dc:gu/generate
function entities:events/quest_villager/remove_quest_on_player with storage gu:main
#Удаляем тег
tag @s remove ActiveQuest
execute positioned as @s run playsound minecraft:block.anvil.destroy ambient @s

###Минус репутация
execute if score @s QuestReputation matches -7..-1 run scoreboard players remove @s QuestReputation 3
execute if score @s QuestReputation matches 0..39 run scoreboard players remove @s QuestReputation 7
execute if score @s QuestReputation matches 40..99 run scoreboard players remove @s QuestReputation 12
execute if score @s QuestReputation matches 100.. run scoreboard players remove @s QuestReputation 15
###

tellraw @s {"translate":"dsb.events.quests.fail","color":"red","with":[{"score":{"objective":"QuestReputation","name":"@s"}}]}