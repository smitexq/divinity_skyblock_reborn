execute store result score *var1 variables run random value 1..13
execute if score *var1 variables matches 1 run return run function entities:events/quest_villager/quests/new_task {name:"bogged", count:"2..4"}
execute if score *var1 variables matches 2 run return run function entities:events/quest_villager/quests/new_task {name:"cave_spider", count:"3..5"}
execute if score *var1 variables matches 3 run return run function entities:events/quest_villager/quests/new_task {name:"creeper", count:"5..9"}
execute if score *var1 variables matches 4 run return run function entities:events/quest_villager/quests/new_task {name:"drowned", count:"2..3"}
execute if score *var1 variables matches 5 run return run function entities:events/quest_villager/quests/new_task {name:"enderman", count:"1..3"}
execute if score *var1 variables matches 6 run return run function entities:events/quest_villager/quests/new_task {name:"husk", count:"3..6"}
execute if score *var1 variables matches 7 run return run function entities:events/quest_villager/quests/new_task {name:"phantom", count:"4..7"}
execute if score *var1 variables matches 8 run return run function entities:events/quest_villager/quests/new_task {name:"skeleton", count:"3..8"}
execute if score *var1 variables matches 9 run return run function entities:events/quest_villager/quests/new_task {name:"slime", count:"15..35"}
execute if score *var1 variables matches 10 run return run function entities:events/quest_villager/quests/new_task {name:"spider", count:"6..10"}
execute if score *var1 variables matches 11 run return run function entities:events/quest_villager/quests/new_task {name:"stray", count:"2..4"}
execute if score *var1 variables matches 12 run return run function entities:events/quest_villager/quests/new_task {name:"witch", count:"2..3"}
execute if score *var1 variables matches 13 run return run function entities:events/quest_villager/quests/new_task {name:"zombie", count:"10..20"}