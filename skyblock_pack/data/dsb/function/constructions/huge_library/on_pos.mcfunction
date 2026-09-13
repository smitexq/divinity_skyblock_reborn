#Если постройка была сломана
execute positioned ~ ~-1 ~ unless predicate dsb:constructions/h.library/any_static run return run function dsb:constructions/huge_library/remove


function dc:gu/generate
###Проверка наличия игрока
#Если игрок вышел
execute align xyz positioned ~-2 ~-1 ~-2 as @a[tag=initH.library] unless entity @s[dx=4, dz=4, dy=4.5] run function dsb:constructions/huge_library/remove_player with storage gu:main
#Игрок в библиотеке
execute align xyz positioned ~-2 ~-1 ~-2 as @a[dx=4, dz=4, dy=4.5, tag=!initH.library] run function dsb:constructions/huge_library/as_player with storage gu:main


##Проверка через n секунд (чем дальше игрок, тем реже проверка)
execute unless entity @p[distance=..30] run return run function dc:get_call {tick:150, command:"function dsb:constructions/huge_library/on_pos", requirePos:false, requireEntity:true}

execute unless entity @p[distance=..9] run return run function dc:get_call {tick:60, command:"function dsb:constructions/huge_library/on_pos", requirePos:false, requireEntity:true}

function dc:get_call {tick:20, command:"function dsb:constructions/huge_library/on_pos", requirePos:false, requireEntity:true}