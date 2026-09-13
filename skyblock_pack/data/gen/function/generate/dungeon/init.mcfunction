#Старый остров
data modify storage dsb_gen:values CurrentIsland.x set from storage dsb_gen:gen Dungeons.OldIsland.x
data modify storage dsb_gen:values CurrentIsland.y set from storage dsb_gen:gen Dungeons.OldIsland.y
data modify storage dsb_gen:values CurrentIsland.z set from storage dsb_gen:gen Dungeons.OldIsland.z
data modify storage dsb_gen:values CurrentIsland.namespase set value "old_island/init"
data modify storage dsb_gen:values CurrentIsland.offsetY set value -7
execute in minecraft:overworld run function gen:generate/dungeon/load with storage dsb_gen:values CurrentIsland

#Морской царь
data modify storage dsb_gen:values CurrentIsland.x set from storage dsb_gen:gen Dungeons.SeaKing.x
data modify storage dsb_gen:values CurrentIsland.y set from storage dsb_gen:gen Dungeons.SeaKing.y
data modify storage dsb_gen:values CurrentIsland.z set from storage dsb_gen:gen Dungeons.SeaKing.z
data modify storage dsb_gen:values CurrentIsland.namespase set value "sea_king/init"
data modify storage dsb_gen:values CurrentIsland.offsetY set value -10
execute in minecraft:overworld run function gen:generate/dungeon/load with storage dsb_gen:values CurrentIsland

#Пустынная библиотека
data modify storage dsb_gen:values CurrentIsland.x set from storage dsb_gen:gen Dungeons.DesertLibrary.x
data modify storage dsb_gen:values CurrentIsland.y set from storage dsb_gen:gen Dungeons.DesertLibrary.y
data modify storage dsb_gen:values CurrentIsland.z set from storage dsb_gen:gen Dungeons.DesertLibrary.z
data modify storage dsb_gen:values CurrentIsland.namespase set value "desert_archives/init"
data modify storage dsb_gen:values CurrentIsland.offsetY set value -20
execute in minecraft:overworld run function gen:generate/dungeon/load with storage dsb_gen:values CurrentIsland

#Элеум Лойс
data modify storage dsb_gen:values CurrentIsland.x set from storage dsb_gen:gen Dungeons.FrozenCastle.x
data modify storage dsb_gen:values CurrentIsland.y set from storage dsb_gen:gen Dungeons.FrozenCastle.y
data modify storage dsb_gen:values CurrentIsland.z set from storage dsb_gen:gen Dungeons.FrozenCastle.z
data modify storage dsb_gen:values CurrentIsland.namespase set value "frozen_castle/init"
data modify storage dsb_gen:values CurrentIsland.offsetY set value -50
execute in minecraft:overworld run function gen:generate/dungeon/load with storage dsb_gen:values CurrentIsland
#Лунная арена
execute in gen:winter_queen run forceload add -1 -1 1 1
execute in gen:winter_queen run place jigsaw gen:islands/dungeon/moon_arena/init gen:island/init 20 0 54 -1
execute in gen:winter_queen run forceload remove all

#Фортрес
data modify storage dsb_gen:values CurrentIsland.x set from storage dsb_gen:gen Dungeons.Fortress.x
data modify storage dsb_gen:values CurrentIsland.y set from storage dsb_gen:gen Dungeons.Fortress.y
data modify storage dsb_gen:values CurrentIsland.z set from storage dsb_gen:gen Dungeons.Fortress.z
data modify storage dsb_gen:values CurrentIsland.namespase set value "fortress/init/setup"
data modify storage dsb_gen:values CurrentIsland.offsetY set value -20
execute in minecraft:the_nether run function gen:generate/dungeon/load with storage dsb_gen:values CurrentIsland