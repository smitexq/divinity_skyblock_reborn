			#===============#
			# made by Smite #
			#===============#
			#
particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 1 15
$execute as $(uuid) run playsound minecraft:ambient.cave ambient @s
tag @s add exchange

###Кол-во которое нужно обменять. var1 - опыт игрока
$scoreboard players set *var2 variables $(count)

#Узнаем сколько останется после обмена (если останется)
scoreboard players operation *var3 variables = *var2 variables
execute store result storage dsb:cts Temp.remains int 1 run scoreboard players operation *var3 variables -= *var1 variables

###Если не хватает опыта на весь предмет, то только часть
$execute unless score *var1 variables >= *var2 variables run summon item ~ ~ ~ {Item:{id:"minecraft:sand", count:$(level)}}
execute unless score *var1 variables >= *var2 variables run data modify entity @s Item.count set from storage dsb:cts Temp.remains
$execute unless score *var1 variables >= *var2 variables as $(uuid) run return run xp add @s -$(level) levels
###


execute if score *var1 variables >= *var2 variables run data modify entity @s Item.id set value "minecraft:sand"
$execute if score *var1 variables >= *var2 variables as $(uuid) run xp add @s -$(count) levels