forceload add ~ ~

execute as @a at @s run playsound minecraft:entity.zombie_villager.cure
execute as @a at @s run playsound minecraft:entity.cat.ambient
particle minecraft:gust_emitter_large ~ ~5 ~ 1 2 1 0 5 force
particle minecraft:trial_spawner_detection_ominous ~ ~5 ~ 2 3 2 0 70 force
tellraw @a {"translate":"dsb.events.start_game.additional_island","color":"green"}

execute if predicate gen:forest_id run place jigsaw gen:islands/start/plains_add gen:island/init 1
execute if predicate gen:desert_id run place jigsaw gen:islands/start/desert_add gen:island/init 1
execute if predicate gen:winter_id run place jigsaw gen:islands/start/snow_add gen:island/init 1
execute if predicate gen:ocean_id run place jigsaw gen:islands/start/ocean_add gen:island/init 1

forceload remove ~ ~