#Устанавливаем начальное меню
data modify entity @s Items set from storage dsb:cts Composter.StartMenu
tag @s add growOff

#Для количества очков растительности
$data modify storage dsb:cts Composter.$(out).CountFloraPoints set value 0

#Проверка меню и позиции
function dc:get_call {tick:10, command:"function dsb:constructions/composter/work/menu/check_menu", requirePos:false, requireEntity:true}
function dsb:constructions/composter/on_pos