			#===============#
			# made by Smite #
			#===============#
			#
fill ~-1 ~-2 ~-1 ~1 ~ ~1 air destroy

particle poof ~ ~-0.5 ~ 1 0.8 1 0.1 20 force
particle explosion ~ ~-1 ~ 0 0 0 0 1 force

function dc:gu/generate
function dsb:constructions/cauldron/delete_storage with storage gu:main

#
kill @s