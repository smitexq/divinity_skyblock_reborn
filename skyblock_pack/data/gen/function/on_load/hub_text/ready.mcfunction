setblock ~ ~ ~ air

summon minecraft:text_display ~ ~ ~ {text:'[{"translate":"dsb.hub.start1", "color":"yellow"}, "\\n", {"translate":"dsb.hub.start2", "color":"white"}]', view_range:1f, Rotation:[180f,0f]}


summon minecraft:text_display ~ ~-0.5 ~ {text:'[{"translate":"dsb.hub.ready", "color":"red", "with":["1","3"]}]', view_range:1f, Rotation:[180f,0f], Tags:["hub_ready_player_text"]}

summon minecraft:interaction ~ ~-0.5 ~0.8 {height:0.4, width:2, response:1b, Tags:["hub_ready_player"]}