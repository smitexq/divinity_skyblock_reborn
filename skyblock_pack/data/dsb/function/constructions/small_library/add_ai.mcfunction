			#===============#
			# made by Smite #
			#===============#
			#
#Нахождение в библиотеке дает кд (с учетом -% за книги)
$execute store result score *var1 variables run function dsb:constructions/small_library/api/rest_time/init_calc {time:180, source_uuid: $(out)}
scoreboard players operation @s RestTimeAI += *var1 variables

#Сам интеллект
scoreboard players add @s AI 1
scoreboard players reset @s work_s.library

playsound minecraft:entity.experience_orb.pickup ambient @s
tellraw @s {"translate":"dsb.events.add_ai","color":"gold"}

$function dsb:constructions/small_library/as_player {out: $(out)}