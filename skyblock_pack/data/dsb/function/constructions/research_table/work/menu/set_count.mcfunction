###Достаем нужный ингридиент
$data modify block ~ ~ ~ Items[{Slot:12b}] set from storage dsb:cts ResearchTable.$(uuid).recipe[$(index)][0]


###Если используется в качестве предметов несколько вариантов - тег (например древесина в водосборнике), то алгоритм проверки другой
#копируем путь к тегу
execute if items block ~ ~ ~ container.12 *[minecraft:custom_data~{haveTag:1b}] run data modify storage dsb:cts Temp.tag set from block ~ ~ ~ Items[{Slot:12b}].components."minecraft:custom_data".tag
execute if items block ~ ~ ~ container.12 *[minecraft:custom_data~{haveTag:1b}] run return run function dsb:constructions/research_table/work/menu/item_tag/init with storage dsb:cts Temp
###


###Узнаем совпадает ли ингридиент с требуемым. Для этого копируем их id (так как названия могут быть разными)
setblock 17112022 1 0 minecraft:light_blue_shulker_box
setblock 17112022 0 0 minecraft:light_blue_shulker_box{Items:[{Slot:0b, id:"minecraft:command_block", count:1}]}
data modify block 17112022 0 0 Items[0].id set from block ~ ~ ~ Items[{Slot:12b}].id


#Копирование компонентов. При копировании нам нужна только id.
function dsb:constructions/research_table/work/menu/copy_components {source_slot:12}


#Добавляем предмет из 12 слота (требуемый)
loot insert 17112022 1 0 mine 17112022 0 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]



#Замещаем внутри шалкера предмет на кб, чтобы store success не выдал ошибку одинаковых id
item replace block 17112022 0 0 container.0 with minecraft:command_block
#Слот может быть пустой, тогда будет ошибка, в этом случае предмет будет воздух
execute store success score *var1 variables run data modify block 17112022 0 0 Items[0].id set from block ~ ~ ~ Items[{Slot:13b}].id
execute if score *var1 variables matches 0 run item replace block 17112022 0 0 container.0 with minecraft:air
#Если там не воздух, то копируем еще компоненты
execute if score *var1 variables matches 1 run function dsb:constructions/research_table/work/menu/copy_components {source_slot:13}
execute if score *var1 variables matches 1 run loot insert 17112022 1 0 mine 17112022 0 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]
###


#Устанавливаем успех на 0
$data modify storage dsb:cts ResearchTable.$(uuid).successResult[$(index)].num set value 0

#Узнаем кол-во предметов. Если они совпали, то кол-во = 2
execute store result score *var1 variables run data get block 17112022 1 0 Items[0].count

fill 17112022 0 0 17112022 1 0 air
execute unless score *var1 variables matches 2 run return 0

###Узнаем требуемое кол-во
$execute store result score *var1 variables run data get storage dsb:cts ResearchTable.$(uuid).recipe[$(index)][0].count
execute store result score *var2 variables run data get block ~ ~ ~ Items[{Slot:13b}].count

scoreboard players operation *var1 variables -= *var2 variables
#Если больше одного, то просто записываем разницу
execute if score *var1 variables matches 1.. store result block ~ ~ ~ Items[{Slot:12b}].count int 1 run return run scoreboard players get *var1 variables

#иначе заменяем на "готово" и выставляем успех на этот предмет 1
item replace block ~ ~ ~ container.12 with minecraft:orange_stained_glass_pane[minecraft:hide_tooltip={}, minecraft:custom_data={null:1b}, minecraft:item_model="dsb:ui/complete_button"]
$data modify storage dsb:cts ResearchTable.$(uuid).successResult[$(index)].num set value 1


###Узнаем кол-во предметов для изучения, сопоставляем со списком successResult (кол-во единиц)
$execute store result score *var1 variables run data get storage dsb:cts ResearchTable.$(uuid).recipe
$data modify storage dsb:cts Temp.elements append from storage dsb:cts ResearchTable.$(uuid).successResult[{num:1}]
execute store result score *var2 variables run data get storage dsb:cts Temp.elements

execute if score *var1 variables = *var2 variables run function dsb:constructions/research_table/work/remains/start with storage dsb:cts Temp