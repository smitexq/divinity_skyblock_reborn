			#===============#
			# made by Smite #
			#===============#
			#
scoreboard players reset @s dop_info
scoreboard players enable @s dop_info
tellraw @s {"translate":"§eРецепты выпадают с враждебных мобов. Их можно изучить на специальном Столе для исследований. Всего в игре есть 26 рецептов (4 падают только с адских враждебных мобов). Синий рецепт - постройка, зеленый - крафт, желтый - ритуал. На выпадение рецептов влияет добыча на мече."}
tellraw @s {"text":"§6(2/7)"}
tellraw @s {"translate":"§6Следующая страница ->","hoverEvent":{"action":"show_text","value":{"translate":"§6Нажми на текст"}},"clickEvent":{"action":"run_command","value":"/trigger dop_info set 2"}}