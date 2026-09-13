#А до этого проверяем сколько в мире мобкап, если больше 70, пытаемся спавнить через время
#Для начала очищаем список подходящих позиций и каждую минуту формируем новый список. А остальные попытки спавна будут производиться в старых позициях (если они всё еще подходят)


#Выбираем враждебных мобов вокруг, штук 10, для каждого проверяем условия спавна мобов.
#Формируем список подходящих позиций. Далее из этого списка выбираем несколько позиций (3-5) и спавним нескольких мобов (группа)
data modify storage dsb:temp CorrectPositions set value []

execute as @e[type=#entities:hostile_mobs,distance=24..,limit=15] at @s run function rings:activate_ring/ring_with_lion/summon/on_entity
#Получился список подходящих позиций. 

#Процесс выбора от двух до пяти подходящих позиций
execute store result score *var1 variables run random value 2..5
execute store storage dsb:temp LenArray int 1 run data get storage dsb:temp CorrectPositions
function rings:activate_ring/ring_with_lion/summon/lengtharr with storage dsb:temp