#забираем с задержкой
function dc:get_call {tick:20, command:"advancement revoke @s only dsb:events/use/clock", requirePos:false, requireEntity:true}

#целая часть
scoreboard players operation *var1 variables = @s RestTimeAI
scoreboard players operation *var1 variables *= #100 variables
scoreboard players operation *var1 variables /= #900 variables

##10^-1
scoreboard players operation *var2 variables = @s RestTimeAI
scoreboard players operation *var2 variables *= #10000 variables
scoreboard players operation *var2 variables /= #900 variables
#если сотая часть больше 5 то нужно округлить
scoreboard players operation *var3 variables = *var2 variables
scoreboard players operation *var3 variables %= #10 variables
execute if score *var3 variables matches 5.. run scoreboard players add *var2 variables 10
#
scoreboard players operation *var2 variables /= #10 variables
scoreboard players operation *var2 variables %= #10 variables
##

execute if score *var1 variables matches ..24 run return run title @s actionbar {"translate":"dsb.events.get_rest_time", "with":[{"score":{"objective":"variables", "name":"*var1"}}, {"score":{"objective":"variables", "name":"*var2"}}], "color":"green"}
execute if score *var1 variables matches ..49 run return run title @s actionbar {"translate":"dsb.events.get_rest_time", "with":[{"score":{"objective":"variables", "name":"*var1"}}, {"score":{"objective":"variables", "name":"*var2"}}], "color":"yellow"}
execute if score *var1 variables matches ..74 run return run title @s actionbar {"translate":"dsb.events.get_rest_time", "with":[{"score":{"objective":"variables", "name":"*var1"}}, {"score":{"objective":"variables", "name":"*var2"}}], "color":"gold"}
title @s actionbar {"translate":"dsb.events.get_rest_time", "with":[{"score":{"objective":"variables", "name":"*var1"}}, {"score":{"objective":"variables", "name":"*var2"}}], "color":"red"}