advancement revoke @s only entities:target_quest

#достижение
advancement grant @s only dsb:skyblock/travel/quest

#Расчет tier.level
execute if score @s QuestReputation matches ..-15 run scoreboard players set *var2 variables -1
execute if score @s QuestReputation matches 0..39 run scoreboard players set *var2 variables 0
execute if score @s QuestReputation matches 40..99 run scoreboard players set *var2 variables 1
execute if score @s QuestReputation matches 100.. run scoreboard players set *var2 variables 2

#Вывод репутации
execute if predicate dsb:events/is_sneaking run return run title @s actionbar {"translate":"dsb.events.quests.get_reputation","color":"gold", "with":[{"score":{"objective":"QuestReputation","name":"@s"}}, {"score":{"objective":"variables","name":"*var2"}}]}

function dc:gu/generate
#Проверка предметов
execute if entity @s[tag=ActiveQuest] run return run function entities:events/quest_villager/complete/check with storage gu:main
execute if entity @s[tag=ReloadQuest] run return run title @s actionbar {"translate":"dsb.events.quests.reload","color":"red", "with":[{"score":{"objective":"QuestTime","name":"@s"}}]}

###Выдача нового квеста
tag @s add ActiveQuest
tag @s add ReloadQuest
#Время на выполнение задачи - 60 минут, кд еще 30 минут
scoreboard players set @s QuestTime 5400

data modify storage dsb:quests newTask set value {}
data modify storage dsb:quests newTask.PlayerUUID set from storage gu:main out

#Шанс на квест 50% моб, 50% предметы
execute store result score *var1 variables run random value 0..1 dsb:quest_type
#На моба
execute if score *var1 variables matches 0 run return run function entities:events/quest_villager/quests/mob
execute if score *var1 variables matches 1 run return run function entities:events/quest_villager/quests/item