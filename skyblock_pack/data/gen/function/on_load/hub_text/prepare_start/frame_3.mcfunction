execute as @a at @s run playsound minecraft:ui.button.click ambient @s
title @a title {"text":"1", "color":"gold"}

function dc:get_call {tick:20, command:"function gen:on_load/hub_text/prepare_start/frame_end", requirePos:false, requireEntity:false}