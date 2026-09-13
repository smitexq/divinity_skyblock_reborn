#Если не совпадает предмет в центре
execute unless items entity @e[type=armor_stand, tag=AltarPodium, tag=middle, limit=1] weapon.mainhand #dsb:altar/middle_items run title @s actionbar {"translate":"dsb.events.altar.unknown_recipe","color":"gold"}
execute unless items entity @e[type=armor_stand, tag=AltarPodium, tag=middle, limit=1] weapon.mainhand #dsb:altar/middle_items run return fail

###Копируем предметы из пьедесталов в шалкер в таком же расположении
setblock ~ ~ ~ light_blue_shulker_box
# по полюсам
item replace block ~ ~ ~ container.3 from entity @e[type=armor_stand, tag=AltarShelf, tag=north-west, limit=1] weapon.mainhand
item replace block ~ ~ ~ container.4 from entity @e[type=armor_stand, tag=AltarShelf, tag=north, limit=1] weapon.mainhand
item replace block ~ ~ ~ container.5 from entity @e[type=armor_stand, tag=AltarShelf, tag=north-east, limit=1] weapon.mainhand

item replace block ~ ~ ~ container.12 from entity @e[type=armor_stand, tag=AltarShelf, tag=west, limit=1] weapon.mainhand
# Центральный предмет
item replace block ~ ~ ~ container.13 from entity @e[type=armor_stand, tag=AltarShelf, tag=middle, limit=1] weapon.mainhand
#
item replace block ~ ~ ~ container.14 from entity @e[type=armor_stand, tag=AltarShelf, tag=east, limit=1] weapon.mainhand

item replace block ~ ~ ~ container.21 from entity @e[type=armor_stand, tag=AltarShelf, tag=south-west, limit=1] weapon.mainhand
item replace block ~ ~ ~ container.22 from entity @e[type=armor_stand, tag=AltarShelf, tag=south, limit=1] weapon.mainhand
item replace block ~ ~ ~ container.23 from entity @e[type=armor_stand, tag=AltarShelf, tag=south-east, limit=1] weapon.mainhand
###

###Проверка расположения предметов в хранилище через предикат
execute if predicate dsb:recipes/ritual/ender_eye run return run function dsb:constructions/altar/work/recipes/get_ai_for_recipe {name:"ender_eye", soul:1, ai:1}

execute if predicate dsb:recipes/ritual/base_end_frame run return run function dsb:constructions/altar/work/recipes/get_ai_for_recipe {name:"base_end_frame", soul:1, ai:1}

execute if predicate dsb:recipes/ritual/end_frame run return run function dsb:constructions/altar/work/recipes/get_ai_for_recipe {name:"end_frame",soul:3, ai:3}

execute if predicate dsb:recipes/ritual/netherite_ingot run return run function dsb:constructions/altar/work/recipes/get_ai_for_recipe {name:"netherite_ingot", soul:8, ai:5}

execute if predicate dsb:recipes/ritual/diamond run return run function dsb:constructions/altar/work/recipes/get_ai_for_recipe {name:"diamond", soul:1, ai:1}

execute if predicate dsb:recipes/ritual/saplings if items block ~ ~ ~ container.13 #minecraft:saplings run return run function dsb:constructions/altar/work/recipes/get_ai_for_recipe {name:"saplings", soul:0, ai:3}

execute if predicate dsb:recipes/ritual/totem run return run function dsb:constructions/altar/work/recipes/get_ai_for_recipe {name:"totem", soul:3, ai:2}

execute if predicate dsb:recipes/ritual/ender_chest run return run function dsb:constructions/altar/work/recipes/get_ai_for_recipe {name:"ender_chest", soul:10, ai:5}

execute if predicate dsb:recipes/ritual/elytra run return run function dsb:constructions/altar/work/recipes/get_ai_for_recipe {name:"elytra", soul:30, ai:20}
###

###Если не нашлось ни одно совпадение, то исходя из центрального предмета пишем что нехватает
function dsb:constructions/altar/work/recipes/lack
###


#Рецепт не найден
setblock ~ ~ ~ air
return fail