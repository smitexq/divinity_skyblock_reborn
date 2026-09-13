scoreboard players set *start gameplay 1

# Удаление у всех задач
data remove storage dsb:dc Tasks[{command:"function gen:on_load/hub_text/canceled"}]

execute as @a at @s run playsound minecraft:ui.button.click ambient @s
title @a title {"text":"3", "color":"gold"}


function dc:get_call {tick:40, command:"function gen:on_load/hub_text/prepare_start/frame_2", requirePos:false, requireEntity:false}