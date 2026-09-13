execute if score @s settings_death_info matches 0 run tag @s add click
execute if score @s settings_death_info matches 1 run scoreboard players set @s settings_death_info 0

execute if entity @s[tag=click] run scoreboard players set @s settings_death_info 1
tag @s remove click

function dsb:events/settings/title