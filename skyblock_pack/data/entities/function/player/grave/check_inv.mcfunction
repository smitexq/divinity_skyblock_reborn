#устанавливаем шалкер для возврата предметов
setblock 17112022 255 0 light_blue_shulker_box
###Записываем в хранилище инвентарь из могилы а так же, уровень опыта
#out - UUID могилки (взаимодействие)
$data modify storage dsb:grave db.GraveInventory set from storage dsb:grave All[{UUID:$(out)}].Inventory
$data modify storage dsb:grave lvl.XpLevel set from storage dsb:grave All[{UUID:$(out)}].XpLevel
$data modify storage dsb:grave lvl.XpPoints set from storage dsb:grave All[{UUID:$(out)}].XpPoints
$data modify storage dsb:grave acces.SaveAccessories set from storage dsb:grave All[{UUID:$(out)}].SaveAccessories
#Уничтожаем взаимодействие, далее работаем с хранилищем
kill @s

#Относительно игрока
execute as @p[tag=this] run function entities:player/grave/on_player

# удаление записи
$data remove storage dsb:grave All[{UUID:$(out)}]
# Убираем текст и текстуры
$kill @e[type=#entities:all_displays, tag=$(out)]

#убираем шалкер
setblock 17112022 255 0 air
data remove storage dsb:grave db
data remove storage dsb:grave lvl
data remove storage dsb:grave acces