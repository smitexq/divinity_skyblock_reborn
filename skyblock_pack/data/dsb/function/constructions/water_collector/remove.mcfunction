			#===============#
			# made by Smite #
			#===============#
			#
data remove block ~ ~ ~ Items[{components:{"minecraft:custom_data":{null:1b}}}]

fill ~ ~-1 ~ ~ ~1 ~ air destroy


particle poof ~ ~1 ~ 0.3 0.4 0.3 0.1 15 force
particle explosion ~ ~1 ~ 0 0 0 0 1 force

#
kill @s