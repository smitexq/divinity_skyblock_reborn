tag @s remove WearingAmuletOfLuck
playsound minecraft:entity.breeze.wind_burst ambient @s ~ ~ ~ 0.8 1.5

#Узнаем uuid сущности
function dc:gu/generate

data modify storage dsb:dc_remove temp.UUID set from storage gu:main out
data modify storage dsb:dc_remove temp.command set value "function rings:activate_ring/amulet_of_luck/give_effect"
#Удаляем прошлые вызовы функции
function dc:clear_schedule with storage dsb:dc_remove temp

#Понижаем эффект
execute store result storage dsb:temp time int 1 run data get entity @s active_effects[{id:"minecraft:luck"}].duration 0.05
execute if entity @s[tag=GreenTea1] run return run function food:tea/green/clear_effect
execute if entity @s[tag=GreenTea2] run return run function food:tea/green/luck_level/1 with storage dsb:temp
execute if entity @s[tag=GreenTea3] run return run function food:tea/green/luck_level/2 with storage dsb:temp