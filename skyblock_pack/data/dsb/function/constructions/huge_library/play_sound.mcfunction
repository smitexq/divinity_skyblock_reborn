			#===============#
			# made by Smite #
			#===============#
			#
execute if entity @s[tag=!initH.library] run return 0

execute store result score *var1 variables run random value 0..9
execute if score *var1 variables matches 0..4 run playsound minecraft:item.book.page_turn ambient @a[distance=..3] ~ ~ ~ 2
execute if score *var1 variables matches 0..4 run particle minecraft:enchant ~ ~3 ~ 0 0 0 3 40

function dc:get_call {tick:100, command:"function dsb:constructions/huge_library/play_sound", requirePos:false, requireEntity:true}