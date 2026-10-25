forceload add ~ ~
setblock ~ ~ ~ air


execute store result score *var1 variables run random value 0..99 gen:fortress/spawner

execute if score *var1 variables matches 0..4 run setblock ~ ~ ~ minecraft:trial_spawner{normal_config:"gen:fortress/archer/normal", ominous_config: "gen:fortress/archer/normal", required_player_range:20}
execute if score *var1 variables matches 5..19 run setblock ~ ~ ~ minecraft:trial_spawner{normal_config:"gen:fortress/weak_brute/normal", ominous_config: "gen:fortress/weak_brute/normal"}
execute if score *var1 variables matches 20..31 run setblock ~ ~ ~ minecraft:trial_spawner{normal_config:"gen:fortress/armorer_skeleton/normal", ominous_config: "gen:fortress/armorer_skeleton/normal"}
execute if score *var1 variables matches 32..42 run setblock ~ ~ ~ minecraft:trial_spawner{normal_config:"gen:fortress/blaze/normal", ominous_config: "gen:fortress/blaze/normal"}
execute if score *var1 variables matches 43..49 run setblock ~ ~ ~ minecraft:trial_spawner{normal_config:"gen:fortress/strong_brute/normal", ominous_config: "gen:fortress/strong_brute/normal"}

forceload remove ~ ~