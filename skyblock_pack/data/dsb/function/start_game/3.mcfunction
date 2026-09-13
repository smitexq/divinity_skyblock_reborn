			#===============#
			# made by Smite #
			#===============#
			#
tag @s add start_game
scoreboard players set @s AI 0
scoreboard players reset @s start_game
playsound minecraft:entity.experience_orb.pickup ambient @s
advancement grant @s only skyblock_pack:skyblock/root
tellraw @s {"translate":"Чтобы перейти в режим выживания, прочитай дополнительную информацию.","color":"green"}
tellraw @s {"translate":"Приятной игры!","color":"green"}
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:scute",Count:1b,tag:{CustomModelData:18,Tags:["dop_info"],display:{Name:'{"translate":"§5Дополнительная информация","italic":"false"}',Lore:['{"translate":"§dНажмите «Q» (предмет может упасть в пустоту!)","italic":"false"}']}}}}