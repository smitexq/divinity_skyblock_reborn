#номер слота в котором кубок был
execute store result score *var1 variables store result storage dsb:temp Slot byte 1 run data get entity @s Inventory[{id:"minecraft:poisonous_potato", components:{"minecraft:custom_data":{id:"empty_slot"}}}].Slot

#Если вдруг левая рука, то заменяем на другую цифру (иначе макрос container.-106 выдаст ошибку)
execute if score *var1 variables matches -106 run data modify storage dsb:temp Slot set value 10

function dsb:events/consume/sea_cup/in_slot with storage dsb:temp