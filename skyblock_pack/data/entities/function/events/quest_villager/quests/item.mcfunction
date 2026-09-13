data modify storage dsb:quests newTask.type.id set value "item"

execute if score *nether GameStage matches 1 run return run function entities:events/quest_villager/quests/item/include_nether
execute if score *nether GameStage matches 0 run return run function entities:events/quest_villager/quests/item/exclude_nether