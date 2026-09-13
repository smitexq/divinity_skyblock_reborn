			#===============#
			# made by Smite #
			#===============#
			#
execute store result score *var1 variables run random value 0..1
#добавляем интеллект
execute if score *var1 variables matches 0 run scoreboard players add @s AI 1
execute if score *var1 variables matches 1 run scoreboard players add @s AI 2

execute store result score *var1 variables run random value 0..4
#выводим сообщение игроку
execute if score *var1 variables matches 0 run return run tellraw @s {"translate":"dsb.events.eat_knowledge_piece.msg1","color":"gold"}
execute if score *var1 variables matches 1 run return run tellraw @s {"translate":"dsb.events.eat_knowledge_piece.msg2","color":"yellow"}
execute if score *var1 variables matches 2 run return run tellraw @s {"translate":"dsb.events.eat_knowledge_piece.msg3","color":"dark_purple"}
execute if score *var1 variables matches 3 run return run tellraw @s {"translate":"dsb.events.eat_knowledge_piece.msg4","color":"aqua"}