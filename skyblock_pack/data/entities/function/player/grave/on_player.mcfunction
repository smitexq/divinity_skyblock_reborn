#Узнаем UUID игрока
function dc:gu/generate
#возврат в слоты хотбара и инвентаря
function entities:player/grave/inv/start with storage gu:main

#возврат в слоты брони и второй руки
function entities:player/grave/armor/start

#возврат уровня опыта
function entities:player/grave/return_levels/main

#возврат оставшихся предметов
function entities:player/grave/remains/start with storage gu:main