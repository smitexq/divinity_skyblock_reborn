			#===============#
			# made by Smite #
			#===============#
			#
#Узнаем кол-во уровня игрока
$execute store result score *var1 variables run data get entity $(out) XpLevel

#Если не минимум 1, то ничего не делаем
$execute unless score *var1 variables matches 1.. as $(out) run return run title @s actionbar {"text":"Недостаточно уровня! Для обмена нужен минимум 1","color":"yellow"}

#Записываем uuid того, кто кинул блок, его кол-во и уровень игрока
data modify storage dsb:cts Temp set value {}
data modify storage dsb:cts Temp.uuid set from storage gu:main out
execute store result storage dsb:cts Temp.count int 1 run data get entity @s Item.count
execute store result storage dsb:cts Temp.level int 1 run scoreboard players get *var1 variables

execute if data entity @s Item{id:"minecraft:cobblestone"} run return run function dsb:constructions/nether_converter/exchange/netherrack with storage dsb:cts Temp
execute if data entity @s Item{id:"minecraft:grass_block"} run return run function dsb:constructions/nether_converter/exchange/nylium with storage dsb:cts Temp
execute if data entity @s Item{id:"minecraft:soul_sand"} run return run function dsb:constructions/nether_converter/exchange/sand with storage dsb:cts Temp