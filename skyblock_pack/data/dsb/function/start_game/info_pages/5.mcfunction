			#===============#
			# made by Smite #
			#===============#
			#
scoreboard players reset @s dop_info
scoreboard players enable @s dop_info
tellraw @s [{"translate":"§aЕсли вы будете ломать траву палкой, то иногда вам будет выпадать трава. Из нее можно скрафтить высокую траву"},{"translate":" §2(наведи сюда)","hoverEvent":{"action":"show_text","value":"\uB5AD"}},{"translate":"§a, а из высокой - нитки."},{"translate":" §2(наведи сюда)","hoverEvent":{"action":"show_text","value":"\uB5AC"}}]
tellraw @s {"text":"§2(5/7)"}
tellraw @s {"translate":"§2Следующая страница ->","hoverEvent":{"action":"show_text","value":{"translate":"§2Нажми на текст"}},"clickEvent":{"action":"run_command","value":"/trigger dop_info set 5"}}