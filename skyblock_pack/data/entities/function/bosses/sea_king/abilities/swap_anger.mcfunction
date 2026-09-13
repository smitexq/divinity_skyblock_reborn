tag @s add to_anger
#Устанавливаем на кого агр
data modify entity @s AngryAt set from entity @p[tag=player_for_anger] UUID

#Через 6 секунд может сменить агр
function dc:get_call {tick:120, command:"tag @s remove to_anger", requirePos:false, requireEntity:true}