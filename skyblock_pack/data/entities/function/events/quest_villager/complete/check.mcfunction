$data modify storage dsb:quests curTask set from storage dsb:quests Tasks[{PlayerUUID:$(out)}]

execute if data storage dsb:quests curTask.type{id:"item"} run return run function entities:events/quest_villager/complete/item_values with storage dsb:quests curTask.type
execute if data storage dsb:quests curTask.type{id:"mob"} run return run function entities:events/quest_villager/complete/mob_value with storage dsb:quests curTask.type