			#===============#
			# made by Smite #
			#===============#
			#
scoreboard players reset @s dop_info
scoreboard players enable @s dop_info
tellraw @s {"translate":"§eС небольшой вероятностью, появившийся моб может стать мини-боссом. Он сильнее, быстрее, выносливее. Однако с него повышенный шанс выпадения рецепта."}
tellraw @s {"text":"§6(6/7)"}
tellraw @s {"translate":"§6Следующая страница ->","hoverEvent":{"action":"show_text","value":{"translate":"§6Нажми на текст"}},"clickEvent":{"action":"run_command","value":"/trigger dop_info set 6"}}