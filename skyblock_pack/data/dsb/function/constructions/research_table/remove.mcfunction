			#===============#
			# made by Smite #
			#===============#
			#
#Очищаем бочку
$execute at @e[type=marker, tag=$(out)] run function dsb:constructions/research_table/delete_on_barrel
#Удаляем данные о хранилище
function dsb:constructions/research_table/delete_storage with storage gu:main

#В зависимости от типа постройки разные разрушения
$execute if entity @e[type=marker, tag=$(out), tag=v1-3] run function dsb:constructions/research_table/destroy {main: "~1 ~-1 ~ ~-1 ~1 ~", tr1: "~1 ~ ~-1 ~1 ~ ~1", tr2: "~-1 ~ ~-1 ~-1 ~ ~1", tr3: "~2 ~ ~ ~-2 ~ ~"}
$execute if entity @e[type=marker, tag=$(out), tag=v2-4] run function dsb:constructions/research_table/destroy {main: "~ ~-1 ~-1 ~ ~1 ~1", tr1: "~-1 ~ ~-1 ~1 ~ ~-1", tr2: "~-1 ~ ~1 ~1 ~ ~1", tr3: "~ ~ ~2 ~ ~ ~-2"}

particle poof ~ ~1 ~ 0.8 0.3 0.8 0.1 15 force
particle explosion ~ ~1 ~ 0 0 0 0 1 force

#
kill @s
$kill @e[tag=$(out)]