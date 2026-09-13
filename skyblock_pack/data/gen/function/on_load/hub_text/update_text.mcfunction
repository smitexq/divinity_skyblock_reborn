scoreboard players set *var1 variables 0
execute as @a[tag=hub_ready] run scoreboard players add *var1 variables 1

execute store result score *var2 variables run list

# Виузальный текст
data modify entity @e[type=minecraft:text_display, tag=hub_ready_player_text, limit=1] text set value '[{"translate":"dsb.hub.ready", "color":"red", "with":[{"score":{"objective":"variables", "name":"*var1"}}, {"score":{"objective":"variables", "name":"*var2"}}]}]'


execute unless score *var1 variables = *var2 variables run return fail
execute if score *start gameplay matches 1 run return fail
# Если все игроки готовы, то начать обратный отсчет и игру
function dc:get_call {tick:100, command:"function gen:on_load/start_game", requirePos:false, requireEntity:false}
function gen:on_load/hub_text/prepare_start/frame_1