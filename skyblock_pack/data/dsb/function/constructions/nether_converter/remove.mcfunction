			#===============#
			# made by Smite #
			#===============#
			#
execute if entity @s[tag=v1] run fill ~-1 ~-1 ~ ~1 ~1 ~ air destroy
execute if entity @s[tag=v2] run fill ~ ~-1 ~-1 ~ ~1 ~1 air destroy

particle poof ~ ~ ~ 1 0.3 1 0.1 18 force
particle explosion ~ ~ ~ 0 0 0 0 1 force

#
kill @s
kill @e[type=interaction, tag=NetherConverterExhangeRBC, distance=..0.1, limit=1]