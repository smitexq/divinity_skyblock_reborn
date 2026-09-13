#Если игрок больше не на шифте или нет палок
execute unless predicate dsb:events/for_fire run function dc:gu/generate
execute unless predicate dsb:events/for_fire run return run function dsb:events/fire/remove_init with storage gu:main

#Интеракт с uuid игрока
function dc:gu/generate
execute if entity @s[tag=!initFire] run function dsb:events/fire/on_player/in

#Телепорт к игроку
function dsb:events/fire/tp_to_player with storage gu:main

function dc:get_call {tick:3, command:"function dsb:events/fire/init", requirePos:false, requireEntity:true}