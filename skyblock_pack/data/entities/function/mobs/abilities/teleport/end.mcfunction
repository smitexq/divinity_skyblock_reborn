#Возвращаем мобу гравитацию и уязвимость и удаляем тег на использование телепорта
data modify entity @s NoGravity set value 0b
data modify entity @s PersistenceRequired set value 0b
effect clear @s minecraft:invisibility

#Телепортируем и убиваем маркер
$tp @s @e[type=minecraft:marker, tag=use.teleport, tag=$(out),limit=1]
$kill @e[type=minecraft:marker, tag=use.teleport, tag=$(out),limit=1]