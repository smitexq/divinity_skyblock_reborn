#Если новый игрок, то +боссбар И задания в библиотеке, выдача гайдбука
execute if entity @s[tag=!newPlayer] run function dsb:events/new_player

#Если есть эффект выпитого чая (В ТОМ ЧИСЛЕ квесты), то каждую секунду убираем секунду
execute if predicate food:time_consume_tea run function food:tea/remove_time

#Топор дровосека - спешка
execute if items entity @s weapon.mainhand iron_axe[custom_data={id: "lumberjack_axe"}] run effect give @s haste 2 0 true

#Путешествие
function dsb:events/travel_ring/on_player

#Решение задачи в библиотеке
execute if entity @s[tag=DecideTask] unless score @s TaskAnswer matches -2147483648 at @s run function dsb:events/library_tasks/result/get_uuid