#Если босс стоит на поверхности, то переходим к следующий функции. Return исключает выполнение нижней функции
execute if predicate entities:powerful_jump/entity_not_in_the_air run return run function entities:mobs/abilities/powerful_jump/landed
#Иначе через 10 тиков делаем еще одну проверку
function dc:get_call {tick:10, command:"function entities:mobs/abilities/powerful_jump/check_if_on_ground", requirePos:false, requireEntity:true}