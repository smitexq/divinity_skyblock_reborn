data modify storage dsb:quests newTask.type.id set value "mob"

execute if score *nether GameStage matches 1 run return run function entities:events/quest_villager/quests/mob/include_nether
execute if score *nether GameStage matches 0 run return run function entities:events/quest_villager/quests/mob/exclude_nether