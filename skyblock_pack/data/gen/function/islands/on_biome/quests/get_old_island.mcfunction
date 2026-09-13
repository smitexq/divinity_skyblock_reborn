#Записываем координаты острова
$data modify storage dsb_gen:gen Dungeons.OldIsland.x set from storage dsb_gen:gen CoordsForDungeons.SeaKing[$(index)][0]
$data modify storage dsb_gen:gen Dungeons.OldIsland.y set from storage dsb_gen:gen CoordsForDungeons.SeaKing[$(index)][1]
$data modify storage dsb_gen:gen Dungeons.OldIsland.z set from storage dsb_gen:gen CoordsForDungeons.SeaKing[$(index)][2]

#И удаляем его из этого списка
$data remove storage dsb_gen:gen CoordsForDungeons.SeaKing[$(index)]

#Если остров был единственный в списке, то заполняем список островом по умолчанию
execute if score #count gen matches 1 run data modify storage dsb_gen:gen CoordsForDungeons.SeaKing set value [[-356,55,-480,2]]