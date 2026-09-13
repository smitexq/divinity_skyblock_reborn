#Если постройка была сломана
execute unless predicate dsb:constructions/s.library/any_static run return run function dsb:constructions/small_library/remove


function dc:gu/generate
###Проверка наличия игрока
#Если игрок вышел
execute align xyz positioned ~-1 ~-1 ~-1 as @a[tag=initS.library] unless entity @s[dx=2, dz=2, dy=3] run function dsb:constructions/small_library/remove_player with storage gu:main
#Игрок в библиотеке
execute align xyz positioned ~-1 ~-1 ~-1 as @a[dx=2, dz=2, dy=3, tag=!initS.library] run function dsb:constructions/small_library/as_player with storage gu:main

##Проверка через n секунд (чем дальше игрок, тем реже проверка)
execute unless entity @p[distance=..30] run return run function dc:get_call {tick:150, command:"function dsb:constructions/small_library/on_pos", requirePos:false, requireEntity:true}

execute unless entity @p[distance=..9] run return run function dc:get_call {tick:60, command:"function dsb:constructions/small_library/on_pos", requirePos:false, requireEntity:true}

function dc:get_call {tick:20, command:"function dsb:constructions/small_library/on_pos", requirePos:false, requireEntity:true}