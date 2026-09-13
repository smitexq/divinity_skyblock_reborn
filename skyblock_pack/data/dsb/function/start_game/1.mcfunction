			#===============#
			# made by Smite #
			#===============#
			#
gamemode adventure @s
execute unless score @s building.items matches 1.. run scoreboard players add *global building.items 1
execute unless score @s building.items matches 1.. run scoreboard players operation @s building.items = *global building.items