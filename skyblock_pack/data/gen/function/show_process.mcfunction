#сколько сейчас сгенерировано островов
scoreboard players operation #sumGenIslands gen = *gen_nether gen
scoreboard players operation #sumGenIslands gen += *gen_overworld gen
#сколько должно
scoreboard players operation #allIslands gen = *len_overworld_arr gen
scoreboard players operation #allIslands gen += *len_nether_arr gen

#целая часть
scoreboard players operation *var1 variables = #sumGenIslands gen
scoreboard players operation *var1 variables *= #100 variables
scoreboard players operation *var1 variables /= #allIslands gen

title @a actionbar {"translate":"dsb.events.map_load.get_percent", "with":[{"score":{"objective":"variables", "name":"*var1"}}], "color":"gold"}