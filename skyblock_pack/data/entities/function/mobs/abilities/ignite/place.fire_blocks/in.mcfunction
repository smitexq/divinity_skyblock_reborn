#В зависимости от того, на какой дистанции от босса появилось препятствие на пути маркера, разной силой будет огненный всплеск
execute if score @s use.ignite matches 2..3 run function entities:mobs/abilities/ignite/place.fire_blocks/2..3
execute if score @s use.ignite matches 4 run function entities:mobs/abilities/ignite/place.fire_blocks/4
execute if score @s use.ignite matches 5..6 run function entities:mobs/abilities/ignite/place.fire_blocks/5..6
execute if score @s use.ignite matches 7..8 run function entities:mobs/abilities/ignite/place.fire_blocks/7..8
#Заканчиваем маршрут маркера
kill @s