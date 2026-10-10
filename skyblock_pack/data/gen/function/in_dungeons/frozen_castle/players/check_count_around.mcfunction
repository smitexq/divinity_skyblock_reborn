# dev_beta_1.1 - теперь можно бесконечно фармить королеву
#Картинка больше не активируется, если босс был побежден
# execute if score *defeat_winter_queen gameplay matches 1 run return fail

###Подсказка о том, что необходимо находиться у картины, а так же взять запасное кольцо
advancement grant @a only dsb:notes/tp_to_tomb
###

#Цикличная проверка
function dc:get_call {tick:30, command:"function gen:in_dungeons/frozen_castle/players/check_count_around", requirePos:false, requireEntity:true}

###Проверка что босс файт еще не начался
execute if score *prepare_to_teleport gameplay matches 1 run return fail
scoreboard players set *prepare_to_teleport gameplay 0
###

scoreboard players set *var5 variables 0
scoreboard players set *var6 variables 0

#кол-во игроков готовых телепортироваться
execute positioned ~-4.5 ~-4.5 ~-4.5 as @a[dx=8, dy=8, dz=8] run tag @s add ready
execute as @a[tag=ready] run scoreboard players add *var5 variables 1

#В радиусе крепости
execute at @e[type=marker, tag=MiddleOfEleumLois] positioned ~-60 ~-200 ~-60 as @a[dx=120, dy=500, dz=120] run scoreboard players add *var6 variables 1

#убираем теги
function dc:get_call {tick:1, command:"tag @a remove ready", requirePos:false, requireEntity:false}


#Если в радиусе больше, чем у картины, значит сообщение о необходимом кол-ве
execute if score *var6 variables > *var5 variables as @a[tag=ready] run return run title @s actionbar {"translate":"dsb.events.pricture.prepare_to_teleport", "color":"red", "with":[{"score":{"objective":"variables", "name":"*var5"}}, {"score":{"objective":"variables", "name":"*var6"}}]}
#Если нет игроков в радиусе вообще
execute if score *var6 variables > *var5 variables run return fail

#В случае если игроков хватает
function gen:in_dungeons/frozen_castle/players/teleport