#Вес островов #Возможно в патче
# function gen:islands/weight

# временные координаты острова в хабе
data modify storage dsb:hub Spawn set value {x:0, y:500, z:0}

#Шаблон расположения биомов
execute store result storage dsb_gen:values TemplateId int 1 run random value 0..15 dsb_gen:get_biome_template
# data modify storage dsb_gen:values TemplateId set value 20
function gen:templates/get_biomes_map with storage dsb_gen:values

#Выбор шаблона расположения островов
execute store result storage dsb_gen:values TemplateIslandsId int 1 run random value 0..9 dsb_gen:get_island_template
# data modify storage dsb_gen:values TemplateIslandsId set value 0
function gen:templates/get_islands_map with storage dsb_gen:values
execute store result score *len_overworld_arr gen run data get storage dsb_gen:gen Islands

#Выбор шаблона расположения незерских островов
execute store result storage dsb_gen:values TemplateNetherIslandsId int 1 run random value 0..9 dsb_gen:get_island_nether_template
# data modify storage dsb_gen:values TemplateNetherIslandsId set value 0
function gen:templates/get_nether_map with storage dsb_gen:values
execute store result score *len_nether_arr gen run data get storage dsb_gen:gen NetherIslands


###16x16 чанков стартовой области
forceload add -113 -113 112 112
function gen:start_zone/main

#Для генерации островов. Индекс острова в списке, кол-во островов 
execute store result storage dsb_gen:values Index int 1 run scoreboard players set #index gen 0
execute store result score #temp gen run data get storage dsb_gen:gen Islands
execute store result storage dsb_gen:values LastIslandIndex int 1 run scoreboard players remove #temp gen 1
#Координаты для сравнения (область внутри квадрата 16x16 чанков)
data modify storage dsb_gen:values corner1 set value 128
data modify storage dsb_gen:values corner2 set value -129
function gen:islands/main with storage dsb_gen:values

schedule function gen:remove_forceload 5t
###

###Генерируем стартовый остров
#Спавним маркер на координатах, где будет стартовый остров
function gen:start_zone/summon_start_marker with storage dsb_gen:gen StartIsland
execute at @e[type=marker, tag=StartIslandCoords] run function gen:start_zone/island
###


###Загрузка первой "рамки" - ширина 1 чанк, 4 линии форма квадрат
#Номер рамки
scoreboard players set #squareNum gen 1
#Координаты углов рамки
data modify storage dsb_gen:values Circle.CornerCoords set value [[-129,-129],[128,-129],[128,128],[-129,128]]
data modify storage dsb_gen:values Circle.Steps set value ["~16 ~ ~", "~ ~ ~16", "~-16 ~ ~", "~ ~ ~-16"]
execute store result score #countPoints gen run data get storage dsb_gen:values Circle.CornerCoords
#номер линии (0-3)
execute store result storage dsb_gen:values Circle.Number int 1 run scoreboard players set #num gen 0
# function gen:generate/circles/main with storage dsb_gen:values Circle
#по какой причине без задержки генерация не начинается (возможно превышение длины цепочки выполнения команд)
schedule function gen:schedule_start 3s