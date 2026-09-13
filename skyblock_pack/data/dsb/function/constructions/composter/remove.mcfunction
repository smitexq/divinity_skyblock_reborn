			#===============#
			# made by Smite #
			#===============#
			#
fill ~ ~-1 ~ ~ ~2 ~ air destroy

particle poof ~ ~1 ~ 0.3 0.5 0.3 0.1 15 force
particle explosion ~ ~1 ~ 0 0 0 0 1 force

#Удаляем данные о хранилище
function dc:gu/generate
function dsb:constructions/composter/delete_storage with storage gu:main
#визуал блока земли
kill @e[type=block_display,tag=composterBlock, distance=..1.5]

#Очищаем меню и выкидываются только оставшиеся предметы
data remove entity @s Items[{components:{"minecraft:custom_data":{null:1b}}}]
kill @s