			#===============#
			# made by Smite #
			#===============#
			#
scoreboard players reset @s dop_info
scoreboard players enable @s dop_info
tellraw @s {"translate":"§eКол-во интеллекта можно смотреть через «Tab». Чтобы получить начальный интеллект, можно разжечь костер, выкинув 2 палки на поверхность. Однако костер может появится не сразу: палки могут пропасть, или ничего не произойдет."}
tellraw @s {"text":"§6(4/7)"}
tellraw @s {"translate":"§6Следующая страница ->","hoverEvent":{"action":"show_text","value":{"translate":"§6Нажми на текст"}},"clickEvent":{"action":"run_command","value":"/trigger dop_info set 4"}}