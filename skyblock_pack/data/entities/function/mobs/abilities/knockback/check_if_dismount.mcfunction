#Нужно для того, чтобы с помощью предиката найти связь между игроком и его снежком
scoreboard players operation *search use.powerful_jump = @s use.powerful_jump

#Если игрок должен быть на снежке (есть тег), но он не сидит на нем, то садим обратно
execute if entity @s[tag=MountSnowball, predicate=!entities:powerful_jump/is_mount_on_snowball] run ride @s mount @e[type=minecraft:snowball, predicate=entities:powerful_jump/searh_id_for_vehicle_snowball, limit=1]

#Проверяем, если снежок существует и не разбился, то не выполняем следующие команды и через 5 тиков проверяем еще раз, что игрок не слез. 
execute if entity @e[type=minecraft:snowball, predicate=entities:powerful_jump/searh_id_for_vehicle_snowball, limit=1] run return run function dc:get_call {tick:5, command:"function entities:mobs/abilities/knockback/check_if_dismount", requirePos:false, requireEntity:true}

#Иначе забираем тег и освобождаем очередность
tag @s remove MountSnowball
scoreboard players reset @s use.powerful_jump
scoreboard players remove *global use.powerful_jump 1