setblock 17112022 255 0 minecraft:shulker_box

#Выдаем голову с ником игрока и копируем название в хранилище
loot insert 17112022 255 0 loot dsb:get_nick
data modify storage dsb:dc init.playerName set from block 17112022 255 0 Items[0].components."minecraft:profile".name

setblock 17112022 255 0 minecraft:air