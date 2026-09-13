#Если стойка приземлилась, то опускаем её пониже, чтобы динамит не висел в воздухе (так как он на голове)
execute if entity @s[nbt={OnGround:1b},nbt=!{NoGravity:1b}] run tp @s ~ ~-0.7 ~
execute if entity @s[nbt={OnGround:1b}] run data modify entity @s NoGravity set value 1b

#Если рядом нет игрока, то продолжаем поиск
execute unless entity @p[distance=..1.2] run return run function dc:get_call {tick:7, command:"function entities:mobs/abilities/throw_mini_tnt/check_if_player", requirePos:false, requireEntity:true}

#Иначе запускаем взрыв
function entities:mobs/abilities/throw_mini_tnt/explosion