			#===============#
			# made by Smite #
			#===============#
			#
#тригеры
execute as @a if score @s GetRecipesBook matches 1.. run function dsb:events/get_recipe_book
execute as @a if score @s VizualConstruction matches 1.. run function dsb:events/displays/constructions/get
execute as @a if score @s Settings matches 1.. run function dsb:events/settings/init

#Невидимые вагонетки
execute as @e[type=#minecraft:minecarts,tag=!invisible_minecart] run function dsb:events/invisible_minecarts

#Достижения
execute as @e[type=marker, tag=dsb.adv.escape] at @s unless block ~ ~ ~ sand run advancement grant @a[distance=..200] only dsb:skyblock/travel/escape
execute as @e[type=marker, tag=dsb.adv.desert_archives] at @s run advancement grant @a[distance=..1] only dsb:skyblock/travel/desert_archives
execute as @e[type=marker, tag=dsb.adv.desert_archives_deep] at @s run advancement grant @a[distance=..1] only dsb:skyblock/travel/desert_archives_deep


#Очистка менюшки
execute as @a if items entity @s player.cursor *[minecraft:custom_data~{null:1b}] run item replace entity @s player.cursor with minecraft:air
execute as @a if predicate dsb:dupe/items_in_bundle_from_research_table run item replace entity @s player.cursor with minecraft:air
kill @e[type=item, nbt={Item:{components:{"minecraft:custom_data":{null:1b}}}}]