			#===============#
			# made by Smite #
			#===============#
			#
particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 1 15
$execute as $(uuid) run playsound minecraft:ambient.cave ambient @s
tag @s add exchange

###Рандом на обмен, багряный или искаженный
execute store result score *var4 variables run random value 0..1 dsb:nether_converter

###Кол-во которое нужно обменять. var1 - опыт игрока
$scoreboard players set *var2 variables $(count)

#Узнаем сколько останется после обмена (если останется)
scoreboard players operation *var3 variables = *var2 variables
execute store result storage dsb:cts Temp.remains int 1 run scoreboard players operation *var3 variables -= *var1 variables

###Если не хватает опыта на весь предмет, то только часть
#В зависимости от рандома
$execute unless score *var1 variables >= *var2 variables if score *var4 variables matches 0 run summon item ~ ~ ~ {Item:{id:"minecraft:warped_nylium", count:$(level)}}
$execute unless score *var1 variables >= *var2 variables if score *var4 variables matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:crimson_nylium", count:$(level)}}
#
execute unless score *var1 variables >= *var2 variables run data modify entity @s Item.count set from storage dsb:cts Temp.remains
$execute unless score *var1 variables >= *var2 variables as $(uuid) run return run xp add @s -$(level) levels
###

#В зависимости от рандома
execute if score *var1 variables >= *var2 variables if score *var4 variables matches 0 run data modify entity @s Item.id set value "minecraft:warped_nylium"
execute if score *var1 variables >= *var2 variables if score *var4 variables matches 1 run data modify entity @s Item.id set value "minecraft:crimson_nylium"
#
$execute if score *var1 variables >= *var2 variables as $(uuid) run xp add @s -$(count) levels