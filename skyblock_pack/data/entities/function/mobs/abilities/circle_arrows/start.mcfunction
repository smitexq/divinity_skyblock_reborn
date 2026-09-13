#execute as @p at @s align y positioned ~ ~7.5 ~ summon marker run function start...
#Сколько раз  будут призываться стрелы
scoreboard players add @s use.circle_arrows 1

#Звук начала каста
execute if score @s use.circle_arrows matches 1 run playsound minecraft:entity.evoker.prepare_attack ambient @a ~ ~ ~ 2 1.5
execute if score @s use.circle_arrows matches 5 run playsound minecraft:entity.elder_guardian.ambient ambient @a ~ ~ ~ 2 1.4
#Звук выстрела
playsound minecraft:entity.shulker_bullet.hit ambient @a ~ ~ ~ 1 2

#Телепортируем окружность над ближайшим игроком и воспроизводим частицы
execute positioned as @p positioned ~ ~7.5 ~ run tp @s ~ ~ ~
execute rotated as @s run function entities:mobs/abilities/circle_arrows/particles

#Сколько стрел будет за одну итерацию
execute store result score *var1 variables run random value 1..3
function entities:mobs/abilities/circle_arrows/set_count_arrows

#Если количество итерация меньше 20, то призываем еще
execute if score @s use.circle_arrows matches ..24 run return run function dc:get_call {tick:5, command:"function entities:mobs/abilities/circle_arrows/start", requirePos:false, requireEntity:true}
#Удаляем маркер
kill @s
data remove storage dsb:temp CircleArrows