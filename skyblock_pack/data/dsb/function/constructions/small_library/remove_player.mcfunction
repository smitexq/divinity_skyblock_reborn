#если нет линка с этой библиотекой, то ничего не делаем
$execute unless entity @s[tag=$(out)] run return 0

#Удаляем тег и время работы
tag @s remove initS.library
$tag @s remove $(out)
scoreboard players reset @s work_s.library

###Очищение задач от игрока
function dc:gu/generate

data modify storage dsb:dc_remove temp.UUID set from storage gu:main out
$data modify storage dsb:dc_remove temp.command set value "function dsb:constructions/small_library/as_player {out:$(out)}"
function dc:clear_schedule with storage dsb:dc_remove temp

data modify storage dsb:dc_remove temp.command set value "function dsb:constructions/small_library/play_sound"
function dc:clear_schedule with storage dsb:dc_remove temp