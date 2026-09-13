#Если не заполненный котел, то требуется вода
$execute at $(out) unless block ~ ~ ~ minecraft:water_cauldron[level=3] run return run title @s actionbar {"text":"Для приготовления нужен полный воды котел","color":"red"}

#Добавляем предметы в хранилище временное, чтобы не работать с макросами постоянно
$data modify storage dsb:recipes Tea.Items set from storage dsb:cauldrons_tea $(out).items



#Ромашковый. Если есть ромашка сахар и зеленый чай, то это только рецепт ромашкового чая, проверяем количество ромашки
execute if data storage dsb:recipes Tea.Items[{id:"minecraft:oxeye_daisy"}] if data storage dsb:recipes Tea.Items[{id:"minecraft:sugar"}] if data storage dsb:recipes Tea.Items[{components:{"minecraft:custom_data":{id:"tea_leaves"}}}] run return run function food:cauldron/cook/recipes/oxeye_daisy_tea with storage gu:main

#Березовый чай
execute if data storage dsb:recipes Tea.Items[{id:"minecraft:birch_leaves"}] if data storage dsb:recipes Tea.Items[{components:{"minecraft:custom_data":{id:"tea_leaves"}}}] run return run function food:cauldron/cook/recipes/birch_tea with storage gu:main

#Ягодный
execute if data storage dsb:recipes Tea.Items[{id:"minecraft:sweet_berries"}] if data storage dsb:recipes Tea.Items[{id:"minecraft:sugar"}] if data storage dsb:recipes Tea.Items[{components:{"minecraft:custom_data":{id:"tea_leaves"}}}] run return run function food:cauldron/cook/recipes/berries_tea with storage gu:main

#Черный чай
execute if data storage dsb:recipes Tea.Items[{id:"minecraft:sweet_berries"}] if data storage dsb:recipes Tea.Items[{id:"minecraft:sugar"}] if data storage dsb:recipes Tea.Items[{components:{"minecraft:custom_data":{id:"black_tea_leaves"}}}] run return run function food:cauldron/cook/recipes/black_tea with storage gu:main

#Из сакуры
execute if data storage dsb:recipes Tea.Items[{id:"minecraft:cherry_leaves"}] if data storage dsb:recipes Tea.Items[{id:"minecraft:sugar"}] if data storage dsb:recipes Tea.Items[{components:{"minecraft:custom_data":{id:"tea_leaves"}}}] run return run function food:cauldron/cook/recipes/sakura_tea with storage gu:main

#Зеленый чай
execute if data storage dsb:recipes Tea.Items[{id:"minecraft:sugar"}] if data storage dsb:recipes Tea.Items[{components:{"minecraft:custom_data":{id:"tea_leaves"}}}] run return run function food:cauldron/cook/recipes/green_tea with storage gu:main