#Проверяем что текущая позиция удовлетворяет условиям (пустота)
execute if block ~ ~ ~ #minecraft:air run return run function entities:player/void/spawn
#Пока не найдется пустой блок, будем подниматься выше
execute positioned ~ ~1 ~ run function entities:player/void/loop