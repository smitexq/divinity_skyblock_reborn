execute if score @s Settings matches 3 run scoreboard players remove @s settings_vizual_time 10
execute if score @s Settings matches 4 run scoreboard players add @s settings_vizual_time 10

execute if score @s settings_vizual_time matches ..9 run scoreboard players set @s settings_vizual_time 90
execute if score @s settings_vizual_time matches 91.. run scoreboard players set @s settings_vizual_time 10

function dsb:events/settings/title