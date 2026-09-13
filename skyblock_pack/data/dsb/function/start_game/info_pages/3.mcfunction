			#===============#
			# made by Smite #
			#===============#
			#
scoreboard players reset @s dop_info
scoreboard players enable @s dop_info
tellraw @s {"translate":"§aКонструкции - это одна из особенностей этой карты. Всего в игре существует 10 конструкций, 3 из которых базовые и не требуют изучения."}
tellraw @s {"text":"§2(3/7)"}
tellraw @s {"translate":"§2Следующая страница ->","hoverEvent":{"action":"show_text","value":{"translate":"§2Нажми на текст"}},"clickEvent":{"action":"run_command","value":"/trigger dop_info set 3"}}