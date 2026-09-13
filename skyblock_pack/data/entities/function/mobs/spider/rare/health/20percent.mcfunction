tag @s add less_20percent_hp

function entities:mobs/abilities/military/start
execute if entity @s[tag=!no.use.teleport] run function entities:mobs/abilities/teleport/start