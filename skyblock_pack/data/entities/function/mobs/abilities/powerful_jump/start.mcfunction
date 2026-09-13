#Тег на то, что нельзя юзать телепорт
tag @s add no.use.teleport
function dc:get_call {tick:40, command:"tag @s remove no.use.teleport", requirePos:false, requireEntity:true}

data modify entity @s Motion set value [0d,0d,0d]
#Прыжок и выдача неуязвимости
data modify entity @s Fire set value -1
data modify entity @s Invulnerable set value 1
function dc:get_call {tick:1, command:"data modify entity @s Motion[1] set value 1.5", requirePos:false, requireEntity:true}
#Тег нужен для того, чтобы выдавать отрицательный motion. Ведь моб может приземлиться раньше, чем через секунду, тогда Motion<0 можно не выдавать
tag @s add PowerfulJump

#Частицы и звук
particle minecraft:dust{color:[1f,1f,1f],scale:2f} ~ ~0.3 ~ 0.7 0.1 0.7 0 10 force


#Через 25 тиков боссу выдается отрицательное Motion, чтобы он резко упал вниз
function dc:get_call {tick:25, command:"data modify entity @s[tag=PowerfulJump] Motion[1] set value -3.0", requirePos:false, requireEntity:true}
#Каждые 10 тиков проверяем, приземлился ли босс на поверхность
function dc:get_call {tick:10, command:"function entities:mobs/abilities/powerful_jump/check_if_on_ground", requirePos:false, requireEntity:true}