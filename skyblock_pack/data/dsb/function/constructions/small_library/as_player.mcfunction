#Если пропал линк, то удаляем
$execute unless entity $(out) run return run function dsb:constructions/small_library/remove_player {out:$(out)}

###Если есть фрагментация
execute if entity @s[tag=DependenceFromKnowPiece] run return run title @s actionbar {"translate":"dsb.event.in_library.dependence", "color":"yellow"}
###


###Если высокий интеллект, то скип
execute if entity @s[scores={AI=51..}] run return run title @s actionbar {"translate":"dsb.events.library.overflowing","color":"red","with":[{"score":{"objective":"AI","name":"@s"},"bold":true}]}

###Если есть КД на получение инты
execute if score @s RestTimeAI matches 901.. run return run title @s actionbar {"translate":"dsb.events.rest_time","color":"yellow"}


#В начале звук
execute if entity @s[tag=!initS.library] run function dc:get_call {tick:100, command:"function dsb:constructions/small_library/play_sound", requirePos:false, requireEntity:true}

#Нахождение в библиотеке дает кд (с учетом -% за книги)
$execute store result score *var1 variables run function dsb:constructions/small_library/api/rest_time/init_calc {time:4, source_uuid: $(out)}
scoreboard players operation @s RestTimeAI += *var1 variables

#Привязываем игрока к данной библиотеке
$tag @s add $(out)
tag @s add initS.library

#функция возвращает 1, если шанс сработал
$execute store result score *var1 variables run function dsb:constructions/small_library/get_chance {source_uuid: $(out)}
execute if score *var1 variables matches 1 run scoreboard players add @s work_s.library 1

#Для работаы и вывода интеллекта
scoreboard players operation *var1 variables = @s AI
scoreboard players add *var1 variables 1

#Сообщения
$execute if score @s work_s.library matches 20 run return run function dsb:constructions/small_library/add_ai {out: $(out)}
function dsb:constructions/small_library/title


###Рассчет времени с учетом улучшений (1 руна -12 тиков)
scoreboard players set *var1 variables 0
#кол-во рун
$scoreboard players operation *var1 variables = $(out) library.tome_of_rune

scoreboard players set *var2 variables 90
scoreboard players operation *var1 variables *= #12 variables
execute store result storage dsb:temp time int 1 run scoreboard players operation *var2 variables -= *var1 variables

$data modify storage dsb:temp out set value $(out)
data modify storage dsb:temp cst set value "small_library"

function dsb:constructions/small_library/api/set_next_time with storage dsb:temp