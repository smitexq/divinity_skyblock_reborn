#Записываем id маркера. Нужно чтобы найти исполнителя и телепортировать маркер, а к маркеру телепортировать стрелы
scoreboard players operation *search use.hexagon_arrows = @s use.hexagon_arrows
#Телепорт маркера к мини боссу и чуть выше (на 4 блока)
execute positioned as @e[type=#entities:entities_bosses,tag=UseHexagonArrows,predicate=entities:search_id_of_hexagon_arrows,limit=1] positioned ~ ~4 ~ run tp @s ~ ~ ~

#Выполнение команд относительно новой позиции маркера
execute positioned as @s run function entities:mobs/abilities/hexagon_of_arrows/link/new_marker_position

#Задаем стрелам эпсилон вектор-направления на игрока
# execute as @e[type=arrow,tag=hexagon,predicate=entities:search_id_of_hexagon_arrows] at @s run data modify entity @s Motion set value [0.0d, 0.0d, 0.0d]
execute as @e[type=arrow,tag=hexagon,predicate=entities:search_id_of_hexagon_arrows] at @s run data modify entity @s Motion set from storage dsb:temp FindTpVector.Vector
#Очищаем хранилище
data remove storage dsb:temp FindTpVector