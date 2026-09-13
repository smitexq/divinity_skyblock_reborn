			#===============#
			# made by Smite #
			#===============#
			#
setblock ~ ~ ~ air
#Взимодействие, которое мешает установке блоков
execute align xyz positioned ~0.5 ~ ~0.5 summon minecraft:interaction run function dsb:constructions/sieve/work/blocking_the_place

#Визуал блока
$execute align xyz run summon block_display ~0.15 ~ ~0.15 {Tags:["sieveBlock","$(block)"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]},block_state:{Name:"minecraft:$(block)"}}

#Тп вниз. Позиция относительно дисплея
$execute as @e[type=minecraft:block_display, tag=sieveBlock, distance=..1] at @s run function dsb:constructions/sieve/work/go_down {block: $(block)}
#Звук на позиции дисплея
execute as @e[type=minecraft:block_display, tag=sieveBlock, distance=..1] run function dc:get_call {tick:10, command:"function dsb:constructions/sieve/work/sound", requirePos:false, requireEntity:true}

###Проверяем КТО установил блок, если рядом есть игрок с везением
$execute if entity @p[tag=UseGreenTea,distance=..7] summon marker run function dsb:constructions/sieve/work/block/player_with_lucktea {block: $(block)}
###

#Проверка блока просле просеивания (на 1 вниз, так как place_block был на 1 вверх ~ ~1 ~)
execute positioned ~ ~-1 ~ run function dc:get_call {tick:66, command:"function dsb:constructions/sieve/on_pos", requirePos:true, requireEntity:false}