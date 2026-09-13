#Очищение списка островов и чанков
data modify storage dsb_gen:gen Islands set value []

#Генерация данжей
function gen:generate/dungeon/init
tellraw @a {"translate":"dsb.events.map_load.complete","color":"green"}

scoreboard players set #genComplete gen 1

schedule function gen:remove_forceload 5s