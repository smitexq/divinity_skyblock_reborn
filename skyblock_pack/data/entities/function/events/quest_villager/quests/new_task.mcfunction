$data modify storage dsb:quests newTask.type.name set value $(name)
$execute store result storage dsb:quests newTask.type.count int 1 run random value $(count) dsb:quest_count

#Добавление задачи в список (так как может быть несколько игроков)
data modify storage dsb:quests Tasks append from storage dsb:quests newTask
#Звук
playsound minecraft:entity.experience_orb.pickup ambient @s
playsound minecraft:entity.villager.celebrate ambient @s

#Если это предмет, то только сообщение
execute if data storage dsb:quests newTask.type{id:"item"} run return run function entities:events/quest_villager/quests/get_item_msg with storage dsb:quests newTask.type
#Иначе это задание на моба и очищаем скорборд
$tellraw @s {"translate":"dsb.events.quests.get_entity_quest","color":"green", "with":[{"storage": "dsb:quests","nbt": "newTask.type.count"},{"translate":"entity.minecraft.$(name)"}]}
$scoreboard players set @s kill_count_$(name) 0