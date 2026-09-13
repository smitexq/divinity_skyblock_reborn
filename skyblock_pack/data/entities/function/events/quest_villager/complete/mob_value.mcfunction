#Если недостаточно мобов убито, то ошибка
$execute unless score @s kill_count_$(name) matches $(count).. run return run title @s actionbar {"translate":"dsb.events.quests.lack_of_entities","color":"red", "with":[{"text":"$(count)"},{"translate":"entity.minecraft.$(name)"},{"score":{"objective":"kill_count_$(name)","name":"@s"}}]}

#выдаем репутцию и лут
function entities:events/quest_villager/complete/reputation