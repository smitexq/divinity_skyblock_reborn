advancement revoke @s only food:interaction_target

###Получае uuid, удаляем тег ПКМ, а так же ДЕЙСТВИЕ в зависимости от стадии готовки
execute as @e[type=minecraft:interaction,tag=CauldronTea,nbt={interaction:{}}] run function food:cauldron/action/get_uuid {nbt: "interaction"}

#Если выполняется готовка, то не проверяем
function food:cauldron/action/set_stage with storage gu:main
execute if function food:cauldron/action/get_stage run return 0

###Проверка предмета
execute if items entity @s weapon.mainhand #food:buckets run return run function food:cauldron/action/fill_water with storage gu:main
execute if items entity @s weapon.mainhand minecraft:flint_and_steel run return run function food:cauldron/cook/check_water with storage gu:main
execute if items entity @s weapon.mainhand #food:bottles run return run function food:cauldron/action/bottle_action with storage gu:main
#Если нет предмета в руке, то не проверять
execute unless items entity @s weapon.mainhand * run return 0

###Проверка предмета на валидность
#Устанавливаем шалкер, в него вставляем предмет (1 шт.) и таблицу возможных предметов
setblock 17112022 0 0 minecraft:shulker_box
item replace block 17112022 0 0 container.0 from entity @s weapon.mainhand food:set_count_1
loot insert 17112022 0 0 loot food:allow_items

execute store result score *var1 variables run data get block 17112022 0 0 Items
#Если их больше чем возможно, то не добавляем
execute unless score *var1 variables matches 7 run return run function food:cauldron/action/canceled
###

function food:cauldron/action/on_storage with storage gu:main
tag @e[type=minecraft:interaction,tag=CauldronTea,tag=UpdateVizual] remove UpdateVizual