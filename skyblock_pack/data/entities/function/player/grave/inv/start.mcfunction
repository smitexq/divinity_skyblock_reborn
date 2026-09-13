#Вешаем на игрока тег, который блокирует выполнение проверок изменения инвентаря (inventory changed)
tag @s add BlockInvChanged

#Записываем текущий инвентарь игрока (хотбар и первые 2 строчки)
data modify block 17112022 255 0 Items set from entity @s Inventory
#Записываем в хранилище инвентарь игрока (чтобы потом не использовать селекторы и nbt={})
data modify storage dsb:grave db.PlayerInventory set from entity @s Inventory


#Добавляем предметы из могилы в свободные слоты инвентаря игрока (пока что в шалкере), в нужном порядке. Если такой предмет добавили, то удаляем его из могилы.
###def Перенос предметов в шалкер
#var1 - с какого слота игрока начинаем (если с 0, то пишем -1)
#var2 - номер слота в шалкере, куда начнем переносить (так же, если хотим начать заполнять с первого, то пишем 0)

scoreboard players set *var1 variables -1
scoreboard players set *var2 variables -1
data modify storage dsb:grave db.Namespace set value "GraveInventory"
function entities:player/grave/inv/loop {limit:25}
#возвращаем часть инвентаря
loot replace entity @s container.0 mine 17112022 255 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]
###


#Нужно заменить номера слотов (27-35) в инвентаре могилы на (0-8) для того, чтобы можно было вставить в шалкер. Аналогично с игроком
###def Замена слотов
###инвентарь игрока
data remove storage dsb:grave db.TempPLInv

#ГДЕ var1 индекс для того, чтобы достать элемент из Numbers. Одновременно с этим это и номер слота в шалкере. Numbers список слотов, которые будет заменять
#TargetNamespace - куда записывать предметы с новыми номерами слотов
#Source - откуда брать эти самые предметы для замены слотов
#limit на один меньше, чем элементов в списке Numbers

execute store result storage dsb:grave db.Index int 1 run scoreboard players set *var1 variables 0
data modify storage dsb:grave db.Numbers set value [27,28,29,30,31,32,33,34,35]
data modify storage dsb:grave db.TargetNamespace set value "TempPLInv"
data modify storage dsb:grave db.SourceNamespace set value "PlayerInventory"
data modify storage dsb:grave db.limit set value 8

function entities:player/grave/inv/replace_numbers with storage dsb:grave db
###
#Выписываем предметы игрока из третьей строчки его инвентаря в шалкер
data modify block 17112022 255 0 Items set from storage dsb:grave db.TempPLInv


###def Замена слотов
###Инвентарь могилы
data remove storage dsb:grave db.TempGraveInv

execute store result storage dsb:grave db.Index int 1 run scoreboard players set *var1 variables 0
data modify storage dsb:grave db.Numbers set value [27,28,29,30,31,32,33,34,35]
data modify storage dsb:grave db.TargetNamespace set value "TempGraveInv"
data modify storage dsb:grave db.SourceNamespace set value "GraveInventory"
data modify storage dsb:grave db.limit set value 8

function entities:player/grave/inv/replace_numbers with storage dsb:grave db
###


###def Перенос предметов в шалкер
#продолжаем добавлять предметы в шалкер (в свободные слоты) из могилы. То есть в 3-ю строчку инвентаря игрока
scoreboard players set *var1 variables 26
scoreboard players set *var2 variables -1
data modify storage dsb:grave db.Namespace set value "TempGraveInv"
function entities:player/grave/inv/loop {limit:7}
#возвращаем предметы
loot replace entity @s container.27 mine 17112022 255 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]
###


###Возврат колец
#Если менюшка закрыта, то нужно изменить storage dsb:rings uuid.SaveRings игрока, который подошел забрать лут
#Если менюшка открыта, то нужно из SaveAccessories в возможные свободные слоты засунуть кольца
#Во обоих случаях, если предметы остаются в SaveRings, то они отправляются в remains

#Обновляем данные
data modify storage dsb:grave db.PlayerInventory set from entity @s Inventory

#Если меню открыто, то список колец берем напрямую из инвентаря игрока
execute if entity @s[tag=OpennedGUIRings] run function entities:player/grave/inv/return_rings/main {path: "dsb:grave db.PlayerInventory"}
#Если же закрыто, то список берем из его облачного хранилища
$execute if entity @s[tag=!OpennedGUIRings] run function entities:player/grave/inv/return_rings/main {path: "dsb:rings $(out).SaveRings"}

data modify block 17112022 255 0 Items set from storage dsb:grave acces.OutPut
#Если меню открыто, то загружаем в инвентарь игрока, если закрто - в облако
execute if entity @s[tag=OpennedGUIRings] run return run function entities:player/grave/inv/return_rings/to_player
$data modify storage dsb:rings $(out).SaveRings set from storage dsb:grave acces.OutPut
###