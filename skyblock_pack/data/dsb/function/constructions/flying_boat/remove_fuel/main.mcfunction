scoreboard players reset @s RemoveFuel

setblock 17112022 0 0 light_blue_shulker_box

#Добавляем в шалкер хотбар и первые 2 строчки инвентаря
data modify block 17112022 0 0 Items append from entity @s Inventory[{components:{"minecraft:custom_data":{id:"fuel"}}}]

###*var1 = 0/1. 1 - лежит в первых двух строках инвентаря или хотбаре, 0 - третья строка или вторая рука или за кольцами
#Если ни одного предмета, то будет 0, если есть предмет, то 1
execute store result score *var1 variables run data get block 17112022 0 0 Items
execute if score *var1 variables matches 1.. run scoreboard players set *var1 variables 1
#Если в этих строчках нет топлива, то берем из третьей строчки инвентаря
execute if score *var1 variables matches 0 run function dsb:constructions/flying_boat/remove_fuel/3d_line

###*var4 = 0/1. 1 - значит предмет лежал в третьей строчке ИЛИ во второй руке. 0 - его нигде нет, значит он за кольцами
execute store result score *var4 variables run data get block 17112022 0 0 Items
execute if score *var4 variables matches 0 run function dc:gu/generate
execute if score *var4 variables matches 0 run return run function dsb:constructions/flying_boat/remove_fuel/open_ring_slots with storage gu:main

#Узнаем слот, в котором лежит топливо
execute store result score *var2 variables run data get block 17112022 0 0 Items[0].Slot
setblock 17112022 0 0 air

#Если оно лежит в хотбаре или в первых двух строчках инвентаря, то это просто container.$(slot)
execute if score *var1 variables matches 1 store result storage dsb:temp slot int 1 run scoreboard players get *var2 variables
#Если оно лежало в левой руке. То это weapon.offhand
execute if score *var1 variables matches 0 if score *var2 variables matches 26 run return run item modify entity @s weapon.offhand food:remove_item
#Если оно лежало в третьей строке инвентаря, то это container.$(slot)+27 (так как в шалкере от 0 до 8, а у игрока это уже 27-35)
execute if score *var1 variables matches 0 store result storage dsb:temp slot int 1 run scoreboard players add *var2 variables 27
function dsb:constructions/flying_boat/remove_fuel/slot with storage dsb:temp


