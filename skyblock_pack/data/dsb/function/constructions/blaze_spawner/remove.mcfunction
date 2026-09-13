			#===============#
			# made by Smite #
			#===============#
			#
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air destroy

particle poof ~ ~0.5 ~ 1 1 1 0.1 20 force
particle minecraft:gust_emitter_small ~ ~0.5 ~ 0 0 0 0 1 force

function dc:gu/generate
function dsb:constructions/blaze_spawner/delete_storage with storage gu:main

#
kill @s