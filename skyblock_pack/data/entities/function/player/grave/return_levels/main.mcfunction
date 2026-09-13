###с помощью формулы перевести уровень игрока в поинты
execute store result score *levels lvl run data get storage dsb:grave lvl.XpLevel
execute store result score *points lvl run data get storage dsb:grave lvl.XpPoints

#Для разных уровней опыта используем разные формулы
#Информация с wiki https://minecraft.fandom.com/wiki/Experience
execute store result score *total_points lvl run function entities:player/grave/return_levels/formulas/branch
#Прибавляем то, что было у игрока
scoreboard players operation *total_points lvl += *points lvl


###Добавялем поинты игроку
execute store result storage dsb:grave lvl.final int 1 run scoreboard players get *total_points lvl
function entities:player/grave/return_levels/return with storage dsb:grave lvl

#Звук
execute positioned as @s run playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 0.1