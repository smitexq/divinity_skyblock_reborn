$data modify storage dsb_gen:gen Dungeons.$(namespace).x set from storage dsb_gen:gen CoordsForDungeons.$(namespace)[$(index)][0]
$data modify storage dsb_gen:gen Dungeons.$(namespace).y set from storage dsb_gen:gen CoordsForDungeons.$(namespace)[$(index)][1]
$data modify storage dsb_gen:gen Dungeons.$(namespace).z set from storage dsb_gen:gen CoordsForDungeons.$(namespace)[$(index)][2]

#удаляем этот остров из общего списка
$data remove storage dsb_gen:gen CoordsForDungeons.$(namespace)[$(index)]