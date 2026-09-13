#записываем её UUID. А так же в ExistEntity обозначаем существование сущности
#Библиотека gu позволяет перевести uuid из вида (список из 4-х чисел) в хеш код
scoreboard players set @s ExistEntity 1

function dc:gu/generate
data modify storage dsb:dc init.UUID set from storage gu:main out

#Если сущность - игрок, то получаем его ник, иначе оставляем null (нужен для макроса)
data modify storage dsb:dc init.playerName set value "#null"
execute if entity @s[type=minecraft:player] run function dc:get_nick