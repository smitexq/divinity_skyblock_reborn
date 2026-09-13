forceload add ~ ~

setblock ~ ~ ~ air
execute store result score *var1 variables run random value 0..9 gen:fortress/set_chest

execute if score *var1 variables matches 0..5 run setblock ~ ~-1 ~ chest{LootTable:"gen:dungeon/fortress/common"}
execute if score *var1 variables matches 6..9 run setblock ~ ~-1 ~ chest{LootTable:"gen:dungeon/fortress/uncommon"}

forceload remove ~ ~