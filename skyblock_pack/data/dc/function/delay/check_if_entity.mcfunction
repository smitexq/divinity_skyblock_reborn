#Если сущность существует И прогружена, то заканиваем проверку (можно выполнять команду)
$execute if score $(UUID) ExistEntity matches 1 if entity $(UUID) run return 0

#Если сущность СУЩЕСТВУЕТ, но НЕ ПРОГРУЖЕНА, то откладываем выполнение задачи
###"Сырой" предикат в котором меняется ник игрока
$execute if predicate {"condition": "minecraft:any_of", "terms":[{"condition": "minecraft:value_check", "value":{"type": "minecraft:score","target": {"type": "minecraft:fixed","name": "$(UUID)"},"score": "ExistEntity"},"range": 1}, {"condition": "minecraft:value_check", "value":{"type": "minecraft:score","target": {"type": "minecraft:fixed","name": "$(playerName)"},"score": "ExistEntity"},"range": 1}]} run function dc:delay/hold_up/start

# $execute if score $(UUID) ExistEntity matches 1 run tellraw @a {"text":"Server [INFO]: Successfully to save $(command) as entity $(UUID)","color":"green"}
# $execute unless score $(UUID) ExistEntity matches 1 run tellraw @a {"text":"Server [ERROR]: Impossible to execute $(command), entity $(UUID) not exist","color":"red"}

###Если она уже не существует ИЛИ существует (но не прогружена), то удаляем эту задачу
data remove storage dsb:dc work[-1]
#Следующая задача
data modify storage dsb:dc temp set from storage dsb:dc work[-1]

##Кол-во оставшихся задач
scoreboard players remove *var1 variables 1
execute if score *var1 variables matches 0 run return run data modify storage dsb:dc temp set value {}

#И анализируем следующую задачу, если в ней тоже важно наличие сущности
execute if data storage dsb:dc temp{requireEntity:1} run function dc:delay/check_if_entity with storage dsb:dc temp