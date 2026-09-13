tellraw @s {"text":"\n\n\n\n\n\n\n\n"}
tellraw @s {"text":"=====================================================", "color":"gold"}


tellraw @s[scores={settings_death_info=1}] [{"text":"=                  ", "color":"gold"}, {"translate":"dsb.settings.death_info", "color":"yellow", "hoverEvent":{"action":"show_text", "value":{"translate":"dsb.settings.death_info.hover"}}}, {"text":" "}, {"translate":"dsb.settings.on", "color":"green", "clickEvent":{"action":"run_command", "value":"/trigger Settings set 2"}}]

tellraw @s[scores={settings_death_info=0}] [{"text":"=                  ", "color":"gold"}, {"translate":"dsb.settings.death_info", "color":"yellow", "hoverEvent":{"action":"show_text", "value":{"translate":"dsb.settings.death_info.hover"}}}, {"text":" "}, {"translate":"dsb.settings.off", "color":"red", "clickEvent":{"action":"run_command", "value":"/trigger Settings set 2"}}]


tellraw @s [{"text":"=                  ", "color":"gold"}, {"translate":"dsb.settings.vizual_time", "color":"yellow", "hoverEvent":{"action":"show_text", "value":{"translate":"dsb.settings.vizual_time.hover"}}}, {"text":" "}, {"score":{"objective":"settings_vizual_time", "name":"@s"}, "color":"green"}, {"text":", "}, {"text":"↓", "bold":true, "color":"dark_red", "clickEvent":{"action":"run_command", "value":"/trigger Settings set 3"}}, {"text":" "}, {"text":"↑", "bold":true, "color":"dark_green", "clickEvent":{"action":"run_command", "value":"/trigger Settings set 4"}}]


tellraw @s {"text":"=====================================================", "color":"gold"}
tellraw @s {"text":"\n\n\n\n"}