			#===============#
			# made by Smite #
			#===============#
			#
#Разрушаем постройку
fill ~-1 ~-1 ~-1 ~1 ~2 ~1 air destroy
particle poof ~ ~1 ~ 0.9 0.3 0.9 0.1 20 force
particle explosion ~ ~ ~ 0 0 0 0 1 force

summon item ~ ~ ~ {Item:{id:"chiseled_bookshelf"}}

##Для удаления из хранилища
function dc:gu/generate
function dsb:constructions/small_library/task/delete_record with storage gu:main

data modify storage dsb:dc_remove temp.UUID set from storage gu:main out
data modify storage dsb:dc_remove temp.command set value "function dsb:constructions/small_library/task/work/main"
function dc:clear_schedule with storage dsb:dc_remove temp

kill @s
##

# particle minecraft:cloud ~ ~0.5 ~ 0.8 0.4 0.8 0.05 35
execute as @a[distance=..5, tag=initS.library] at @s run function dsb:constructions/small_library/remove_player with storage gu:main