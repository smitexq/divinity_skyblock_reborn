#Удаляем тег для того, чтобы, если кто-то использует еще один призыв армии, то эти метки больше не задействуются
tag @s remove military

#Количество раз, сколько сработает эта функция
scoreboard players add @s RecursionDepth 1
#Если уже 8ой раз (то есть каждые 5 тиков -> 8*5 = 40 тиков = 2 секунды), то призываем мобов и команды ниже не срабатывают
execute if score @s RecursionDepth matches 8 run return run function entities:mobs/abilities/military/random_mob

#Частицы призыва
particle minecraft:spit ~ ~0.3 ~ 0.1 0.5 0.1 0.01 4 force
#через 5 тиков спавним еще частицы
function dc:get_call {tick:5, command:"function entities:mobs/abilities/military/particle", requirePos:false, requireEntity:true}