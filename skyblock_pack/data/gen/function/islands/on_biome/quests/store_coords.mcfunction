####Записываем в список ВОЗМОЖНЫХ позиций
$data modify storage dsb_gen:gen CoordsForDungeons.$(namespace) append from storage dsb_gen:gen Islands[$(Index)]
#Возвщараем 1, типа остров сгенерирован, чтобы он удалился из общего списка
return 1