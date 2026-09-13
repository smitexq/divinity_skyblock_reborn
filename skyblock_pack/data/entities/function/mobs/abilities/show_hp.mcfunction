#Узнаем максимальное количество здоровья и текущее
execute store result score *var3 variables run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base
execute store result score *var4 variables run data get entity @s Health
#*var5 - процент hp
scoreboard players operation *var5 variables = *var4 variables

#константа
scoreboard players set *var6 variables 100

#Узнаем текущий процент хп: 100*(health)/(max_health)
scoreboard players operation *var5 variables *= *var6 variables
scoreboard players operation *var5 variables /= *var3 variables

#Табличка, на которой выводится текст здоровья
setblock 17112022 0 0 oak_sign

#В зависимости от процента hp выводим различные цвета
execute if score *var5 variables matches 61.. run data modify block 17112022 0 0 front_text.messages[0] set value '{"color":"dark_green","score":{"objective":"variables","name":"*var4"},"extra":[{"text":"/"},{"score":{"objective":"variables","name":"*var3"}}]}'
execute if score *var5 variables matches 31..60 run data modify block 17112022 0 0 front_text.messages[0] set value '{"color":"yellow","score":{"objective":"variables","name":"*var4"},"extra":[{"text":"/"},{"score":{"objective":"variables","name":"*var3"}}]}'
execute if score *var5 variables matches ..30 run data modify block 17112022 0 0 front_text.messages[0] set value '{"color":"red","score":{"objective":"variables","name":"*var4"},"extra":[{"text":"/"},{"score":{"objective":"variables","name":"*var3"}}]}'

#Выводим здоровье
data modify entity @s CustomName set from block 17112022 0 0 front_text.messages[0]
#убираем табличку
setblock 17112022 0 0 air

#После удара через 3 секунды нужно вернуть старое имя, но если был нанесен еще один удар, то счетчик времени нужно обнулить (мы удаляем старые schedule)
#Узнаем uuid сущности
function dc:gu/generate
#записываем команду на возврат имени и uuid во временное хранилище
data modify storage dsb:dc_remove temp.UUID set from storage gu:main out
$data modify storage dsb:dc_remove temp.command set value "$(command)"
#Удаляем прошлые вызовы функции на возврат имени
function dc:clear_schedule with storage dsb:dc_remove temp

#Задаем новый таймер через 3 секунды на возврат имени
$function dc:get_call {tick:60, command:"$(command)", requirePos:false, requireEntity:true}