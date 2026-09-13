			#===============#
			# made by Smite #
			#===============#
			#
#Устанавливаем кол-во обсидиана на максимальное, потом уберем лишние
$data modify storage dsb:cts BlazeSpawner.$(out).ReplaceableBlocks set value [{x:1,y:1,z:0},{x:-1,y:1,z:0},{x:0,y:1,z:1},{x:0,y:1,z:-1},{x:1,y:-1,z:0},{x:-1,y:-1,z:0},{x:0,y:-1,z:1},{x:0,y:-1,z:-1}]

scoreboard players set *var1 variables 0

$execute unless block ~1 ~1 ~ obsidian run function dsb:constructions/blaze_spawner/work/on_blocks/add_crobs {x:1,y:1,z:0, out:$(out)}
$execute unless block ~-1 ~1 ~ obsidian run function dsb:constructions/blaze_spawner/work/on_blocks/add_crobs {x:-1,y:1,z:0, out:$(out)}
$execute unless block ~ ~1 ~1 obsidian run function dsb:constructions/blaze_spawner/work/on_blocks/add_crobs {x:0,y:1,z:1, out:$(out)}
$execute unless block ~ ~1 ~-1 obsidian run function dsb:constructions/blaze_spawner/work/on_blocks/add_crobs {x:0,y:1,z:-1, out:$(out)}
$execute unless block ~1 ~-1 ~ obsidian run function dsb:constructions/blaze_spawner/work/on_blocks/add_crobs {x:1,y:-1,z:0, out:$(out)}
$execute unless block ~-1 ~-1 ~ obsidian run function dsb:constructions/blaze_spawner/work/on_blocks/add_crobs {x:-1,y:-1,z:0, out:$(out)}
$execute unless block ~ ~-1 ~1 obsidian run function dsb:constructions/blaze_spawner/work/on_blocks/add_crobs {x:0,y:-1,z:1, out:$(out)}
$execute unless block ~ ~-1 ~-1 obsidian run function dsb:constructions/blaze_spawner/work/on_blocks/add_crobs {x:0,y:-1,z:-1, out:$(out)}