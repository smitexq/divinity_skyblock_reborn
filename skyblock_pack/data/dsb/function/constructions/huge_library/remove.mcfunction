			#===============#
			# made by Smite #
			#===============#
			#
#Разрушаем постройку
fill ~-2 ~ ~-2 ~2 ~4 ~2 air destroy
particle poof ~ ~2 ~ 2 2 2 0.1 50 force
particle gust_emitter_large ~ ~2 ~ 0 0 0 0 1 force

##Для удаления из хранилища
function dc:gu/generate
function dsb:constructions/small_library/task/delete_record with storage gu:main

data modify storage dsb:dc_remove temp.UUID set from storage gu:main out
data modify storage dsb:dc_remove temp.command set value "function dsb:constructions/huge_library/task/work/main"
function dc:clear_schedule with storage dsb:dc_remove temp

kill @s
##

# particle minecraft:cloud ~ ~0.5 ~ 0.8 0.4 0.8 0.05 35
execute as @a[distance=..7, tag=initS.library] at @s run function dsb:constructions/huge_library/remove_player with storage gu:main