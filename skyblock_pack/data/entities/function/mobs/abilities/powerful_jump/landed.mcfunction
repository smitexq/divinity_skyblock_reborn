#Удаляем тег и возвращаем уязвимость
tag @s remove PowerfulJump
data modify entity @s Invulnerable set value 0

#Отбрасывание сущностей рядомстоящих
function entities:mobs/abilities/knockback/start

#Если был использован мощный взрыв, то дополнительно будут вызваны взрывы
scoreboard players set *var1 variables 0
execute if entity @s[tag=PowerfulBlast] run function entities:mobs/abilities/powerful_blast/on_marker
tag @s remove PowerfulBlast