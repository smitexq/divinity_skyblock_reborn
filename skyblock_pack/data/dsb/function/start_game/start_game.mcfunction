			#===============#
			# made by Smite #
			#===============#
			#
scoreboard players add @s start_game 1

execute if score @s start_game matches 1 run function skyblock_pack:start_game/1
execute if score @s start_game matches 50 run title @s title {"translate":"Добро пожаловать на карту!","color":"yellow"}
execute if score @s start_game matches 170 run function skyblock_pack:start_game/2
execute if score @s start_game matches 290 run title @s title {"translate":"Создатель: Smite","color":"yellow"}
execute if score @s start_game matches 370 run tellraw @s {"translate":"Для комфортной игры рекомендуется использовать текстурпак!","color":"red"}
execute if score @s start_game matches 450 run tellraw @s [{"translate":"Обо всех найденых багах сообщайте ","color":"red"},{"translate":"в Дискорде (нажми сюда)","color":"green","clickEvent":{"action":"open_url","value":"https://discord.gg/vSWmwPkKTt"}},{"translate":", они будут исправлены в следующей версии карты. Вы можете написать и о своих предложениях для новой версии!","color":"red"}]
execute if score @s start_game matches 540 run function skyblock_pack:start_game/3