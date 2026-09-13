scoreboard players set #16 gen 16
scoreboard players set #2 gen 2
scoreboard players set #4 gen 4
scoreboard players set #-1 gen -1

#Список id биомов
data modify storage dsb_gen:gen ListBiomes set value {0:"forest", 1:"ocean", 2:"desert", 3:"snowy_plains", 4:"dark_forest", 5:"jungle", 6:"taiga", 7:"savanna", 8:"warm_ocean", 9:"cold_ocean", 10:"frozen_peaks", 11:"plains", 12:"swamp", 13:"badlands", 14:"cherry_grove", 15:"mushroom_fields", 16:"river"}

#Увеличиваем пределы по рекурсии и изменению блоков мира
gamerule maxCommandChainLength 2147483640
gamerule commandModificationBlockLimit 2147483645
gamerule commandBlockOutput false
gamerule keepInventory true

###Если уже было сгенерировано
execute if score #startGen gameplay matches 1 run return 0

#Настройки до старта игры
worldborder set 4096
difficulty peaceful
defaultgamemode adventure
gamerule waterSourceConversion false
gamerule doDaylightCycle false
gamerule doWeatherCycle false

#Дождь в случайное время
# execute store result storage dsb_gen:values Rain.time int 1 run random value 2400..7200 dsb_gen:get_time_for_rain
# function gen:on_load/rain with storage dsb_gen:values Rain

#Платформа в пустоте
execute in gen:void_dimension positioned 0 60 0 run function gen:on_load/in_void

#Цикл спавна торговцев
function entities:events/traders/load/init

#Координаты боссов
data modify storage dsb_gen:gen Dungeons set value {SeaKing:{}, OldIsland:{}, Fortress:{}, DesertLibrary:{}, FrozenCastle:{}}

#Этапы игры
scoreboard players set *wanderer_ring GameStage 0
scoreboard players set *traveler_ring GameStage 0
scoreboard players set *scholar_ring GameStage 0
scoreboard players set *nether GameStage 0
scoreboard players set *nether_boss GameStage 0
scoreboard players set *eleum_lois GameStage 0

#Начало генерации
function gen:start