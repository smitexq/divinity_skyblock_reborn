execute if score @s Settings matches 1 run function dsb:events/settings/title
execute if score @s Settings matches 2 run function dsb:events/settings/death_info
execute if score @s Settings matches 3..4 run function dsb:events/settings/vizual_time
execute if score @s Settings matches 5 run scoreboard players operation @s VizualConstruction = @s last_vizual

scoreboard players reset @s Settings
scoreboard players enable @s Settings

