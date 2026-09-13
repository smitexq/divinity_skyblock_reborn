scoreboard players set *start gameplay 1

function gen:on_load/in_overworld_pos with storage dsb_gen:values SpawnCoords

#выдача менюшки на закрытый слот колец
execute as @a run function rings:api/return_open_gui_button
#гайдбук
execute as @a run loot give @s loot dsb:items/books/start
#старт
advancement grant @a only dsb:skyblock/root


gamerule sendCommandFeedback false
#Настройки игры
difficulty hard
defaultgamemode survival
gamerule doDaylightCycle true
gamerule doWeatherCycle true
#Ускоренный рост первые 3-ое суток
gamerule randomTickSpeed 9
function dc:get_call {tick:72000, command:"gamerule randomTickSpeed 3", requirePos:false, requireEntity:false}


#Координаты для генерации каменных маленьких островов
data modify storage dsb_gen:islands AdditionalStones set value ["~-30 ~ ~", "~30 ~ ~", "~ ~ ~30", "~ ~ ~-30", "25~ ~ ~25", "-25~ ~ ~25", "25~ ~ ~-25", "-25~ ~ ~-25"]

#Считаем кол-во игроков, чтобы заспавнить новый ДОП остров
execute in minecraft:overworld run schedule function gen:islands/count_players 10s

#Генерация каменных островов за каждого нового человека
execute in minecraft:overworld run schedule function gen:start_zone/extra/init 25s