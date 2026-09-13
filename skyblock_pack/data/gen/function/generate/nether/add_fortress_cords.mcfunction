#Перед записью убавляем размер до обычного, чтобы после одного выбранного острова все остальные сгенерировались как обычные
execute store result storage dsb_gen:gen Islands[-1][3] int 1 run scoreboard players remove #sizeOfIsland gen 100
#добавляем в список к возможным
data modify storage dsb_gen:gen CoordsForDungeons.Fortress append from storage dsb_gen:gen Islands[-1]