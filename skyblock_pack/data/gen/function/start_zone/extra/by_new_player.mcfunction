#Рандомная позиция
$execute store result storage dsb_gen:islands Pos int 1 run random value 0..$(AdditionalNum) dsb:gen_new_stone_island
#Получаем эту позицию по индексу
function gen:start_zone/extra/get_stone_pos with storage dsb_gen:islands
#Относительно выбранных координат генерим
function gen:start_zone/extra/prepare_to_gen_stone with storage dsb_gen:islands