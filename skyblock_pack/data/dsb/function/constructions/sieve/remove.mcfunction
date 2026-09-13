			#===============#
			# made by Smite #
			#===============#
			#
setblock ~ ~ ~ air destroy
setblock ~ ~-1 ~ air destroy
setblock ~1 ~ ~ air destroy
setblock ~-1 ~ ~ air destroy
setblock ~ ~ ~1 air destroy
setblock ~ ~ ~-1 air destroy

particle poof ~ ~1 ~ 0.3 0.15 0.3 0.1 15 force
particle explosion ~ ~ ~ 0 0 0 0 1 force

#В зависимости от того, какой был блок, такой и призываем предмет
execute if entity @e[type=minecraft:block_display,tag=sieveBlock,tag=dirt,distance=..1.5] run summon item ~ ~ ~ {Item:{id:"minecraft:dirt",Count:1b}}
execute if entity @e[type=minecraft:block_display,tag=sieveBlock,tag=gravel,distance=..1.5] run summon item ~ ~ ~ {Item:{id:"minecraft:gravel",Count:1b}}

kill @e[type=marker, tag=initSieve, distance=..1.5]
kill @e[type=minecraft:block_display,tag=sieveBlock,distance=..1.5]