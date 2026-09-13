#Получаем текущий бит и выводим ожидаемое действие на экран
function dc:gu/generate

data modify storage dsb:cts Temp set value {}
data modify storage dsb:cts Temp.uuid set from storage gu:main out
execute store result storage dsb:cts Temp.idEditBit int 1 run scoreboard players get @s CreateFire
execute store result storage dsb:cts Temp.id int 1 run scoreboard players add @s CreateFire 1

#Превращаем прошлый серый квадратик в красный (заполнение поля)
execute if score @s CreateFire matches 1.. run function dsb:events/fire/actions/edit_bits with storage dsb:cts Temp
#Если дошли до конца до развести костер
execute if score @s CreateFire matches 9 run return run function dsb:events/fire/actions/create_fire with storage gu:main

#Иначе получем текущий бит (значение)
function dsb:events/fire/actions/get_bit with storage dsb:cts Temp
# tellraw @a {"score":{"objective":"CreateFire","name":"@s"}, "color":"aqua"}
#

#Ппроверяем полученное действие на совпадение с ожидаемым
function dc:get_call {tick:22, command:"function dsb:events/fire/actions/get_action", requirePos:false, requireEntity:true}

#Цикл
function dc:get_call {tick:23, command:"function dsb:events/fire/actions/start", requirePos:false, requireEntity:true}