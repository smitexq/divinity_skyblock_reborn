#Возможность подобрать стрелу, гравитация, вектор
data modify entity @s pickup set value 1b
$data modify entity @s Motion set value $(Vector)

#Возврат гравитации
# data modify entity @s NoGravity set value 0b
function dc:get_call {tick:15, command:"data modify entity @s NoGravity set value 0b", requirePos:false, requireEntity:true}

#Ускоряем стрелы
function dc:get_call {tick:2, command:"function entities:mobs/abilities/hexagon_of_arrows/multiply_vector", requirePos:false, requireEntity:true}

#Очистка temp
data remove storage dsb:temp HexagonArrows