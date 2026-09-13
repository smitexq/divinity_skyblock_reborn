#Призыв стойки
$summon armor_stand ^ ^0.1 ^1 {Invisible:1b,Motion:$(Motion),Small:1b,Tags:["this"],ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1}]}

#Каждые 3 тика проверяем не столкнулась ли она с игроком
execute as @e[type=armor_stand,tag=this] at @s run function dc:get_call {tick:3, command:"function entities:mobs/abilities/throw_mini_tnt/check_if_player", requirePos:false, requireEntity:true}
#Через 2 секунды взрываем динамит
execute as @e[type=armor_stand,tag=this] at @s run function dc:get_call {tick:40, command:"function entities:mobs/abilities/throw_mini_tnt/explosion", requirePos:false, requireEntity:true}

#Удаляем тег со стойки
tag @e[type=armor_stand,tag=this] remove this