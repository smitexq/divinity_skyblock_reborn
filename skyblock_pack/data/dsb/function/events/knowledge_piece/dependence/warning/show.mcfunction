function dc:get_call {tick:40, command:"advancement revoke @s only dsb:events/use/prepend_use_kp", requirePos:false, requireEntity:true}

execute if entity @s[tag=DependenceFromKnowPiece] run return fail

#Если следующий фрагмент даст зависимость
execute if score @s know.piece_to_dependence matches 3 run function dc:gu/generate
execute if score @s know.piece_to_dependence matches 3 run return run function dsb:events/knowledge_piece/dependence/warning/get_chance with storage gu:main

#Шанс на выдачу интеллекта по формуле (100-n/2)%, где n - кол-во съеденных фрагментов
#Но шанс не меньше 70%
scoreboard players operation *var2 variables = @s eat.know_piece
scoreboard players operation *var2 variables /= #2 variables
scoreboard players set *var1 variables 100
scoreboard players operation *var1 variables -= *var2 variables

#если шанс получился меньше 70%, то устанавливаем 70%
execute if score *var1 variables matches ..69 run scoreboard players set *var1 variables 70

title @s actionbar {"translate":"dsb.events.eat_kp", "color":"yellow", "with":[{"score":{"objective":"variables", "name":"*var1"}}]}