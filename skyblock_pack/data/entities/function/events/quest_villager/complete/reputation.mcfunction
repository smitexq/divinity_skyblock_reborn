#Удаляем задачу
function dc:gu/generate
function entities:events/quest_villager/remove_quest_on_player with storage gu:main
#Кд 30 минут
scoreboard players set @s QuestTime 1800
tag @s remove ActiveQuest
playsound minecraft:entity.cat.ambient ambient @s

###Выдача репутации
#Выполнение квеста дает 10 + tier.levev * 5 + luck * 2 
scoreboard players set *var1 variables 10

#Расчет tier.level
execute if score @s QuestReputation matches ..-15 run scoreboard players set *var2 variables -1
execute if score @s QuestReputation matches 0..39 run scoreboard players set *var2 variables 0
execute if score @s QuestReputation matches 40..99 run scoreboard players set *var2 variables 1
execute if score @s QuestReputation matches 100.. run scoreboard players set *var2 variables 2

# tier.level * 5
scoreboard players set #5 variables 5
scoreboard players operation *var2 variables *= #5 variables

#10 + tier.level * 5
scoreboard players operation *var1 variables += *var2 variables

#Удача
scoreboard players set #2 variables 2
execute store result score *var2 variables run attribute @s minecraft:luck get
scoreboard players operation *var2 variables *= #2 variables

#Полная сумма
scoreboard players operation *var1 variables += *var2 variables
scoreboard players operation @s QuestReputation += *var1 variables
###

loot spawn ~ ~ ~ loot entities:quests/complete