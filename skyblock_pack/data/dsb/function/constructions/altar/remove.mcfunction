			#===============#
			# made by Smite #
			#===============#
			#
fill ~-3 ~-2 ~-3 ~3 ~-1 ~3 air destroy
fill ~-4 ~-2 ~-1 ~-4 ~-1 ~1 air destroy
fill ~4 ~-2 ~-1 ~4 ~-1 ~1 air destroy
fill ~-1 ~-2 ~-4 ~1 ~-1 ~-4 air destroy
fill ~-1 ~-2 ~4 ~1 ~-1 ~4 air destroy
fill ~-1 ~2 ~-1 ~1 ~3 ~1 air destroy

particle poof ~ ~ ~ 3 2 3 0.1 50 force
particle minecraft:gust_emitter_large ~ ~ ~ 0 0 0 0 1 force


###Возвращаем души
#Сначала из инвентарей пьедесталов
setblock 17112022 0 0 minecraft:light_blue_shulker_box
execute as @e[type=armor_stand, tag=AltarShelf] at @s run function dsb:constructions/altar/return_items_in_hand

#Теперь возвращаем души
data remove block 17112022 0 0 Items
loot insert 17112022 0 0 loot dsb:items/soul

#Устанавливаем души из хранилище (если там не 0)
data modify block 17112022 0 0 Items[0].count set from storage dsb:cts Altar.SoulsCount
execute unless data storage dsb:cts Altar{SoulsCount:0} run loot spawn ~ ~ ~ mine 17112022 0 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]

setblock 17112022 0 0 minecraft:air
###

#отображения
function dc:gu/generate
function dsb:constructions/altar/kill_displays with storage gu:main
#

summon item ~ ~ ~ {Item:{id:"minecraft:zombie_head",count:1}}
#
scoreboard players set #init Altar 0
kill @e[type=armor_stand, tag=AltarPodium]
kill @s