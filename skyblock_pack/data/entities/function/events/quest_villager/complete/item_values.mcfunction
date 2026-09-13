$execute store result score *var1 variables run execute if items entity @s container.* $(name)
$execute store result score *var2 variables run execute if items entity @s weapon.offhand $(name)
#Кол-во предметов в инвентаре, включая вторую руку
scoreboard players operation *var1 variables += *var2 variables

#Если недостаточно предметов, то ошибка
$execute unless score *var1 variables matches $(count).. run return run function entities:events/quest_villager/complete/lack_of_items with storage dsb:quests curTask.type

#Если предметов достаточно, то очищаем их, выдаем репутцию и лут
$clear @s $(name) $(count)
function entities:events/quest_villager/complete/reputation