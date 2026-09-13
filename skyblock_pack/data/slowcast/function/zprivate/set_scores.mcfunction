scoreboard players operation @s slowcast.id = .id slowcast.id

scoreboard players operation @s slowcast.itt = #itt slowcast
scoreboard players operation @s slowcast.dist = #dist slowcast
scoreboard players operation @s slowcast.type = .type slowcast

tag @s remove slowcast.new

tp @s ~ ~ ~ ~ ~

#Divinity SkyBlock
execute if score .type slowcast matches 1 run scoreboard players set @s side.wither_storm -4