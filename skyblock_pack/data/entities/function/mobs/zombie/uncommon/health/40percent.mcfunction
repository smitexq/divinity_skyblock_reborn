#Добавляем тег, чтобы функция не сработала еще раз
$tag $(out) add less_40percent_hp

#эффекты
particle minecraft:damage_indicator ~ ~1.2 ~ 0.15 0.05 0.15 0.3 7 normal
playsound minecraft:enchant.thorns.hit ambient @a[distance=..8] ~ ~1 ~

#Выдаем дебаффы
effect give @s minecraft:nausea 8

#Рандомайзер на выдачу типа урона (от этого зависит сообщение о смерти)
execute store result score #chance variables run random value 0..2

#Расплющен в лепешку
execute if score #chance variables matches 0 run return run damage @s 4 minecraft:cramming
#Был убит магией
execute if score #chance variables matches 1 run return run damage @s 4 minecraft:magic
#Убит
execute if score #chance variables matches 2 run return run damage @s 4 minecraft:generic_kill