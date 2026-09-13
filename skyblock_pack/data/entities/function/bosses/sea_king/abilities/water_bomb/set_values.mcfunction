#Направление для движения костей
data modify storage dsb:temp ItemBomb set value {SignX:"", SignY:"", SignZ:""}
#Случайный Motion
execute store result storage dsb:temp ItemBomb.MotionX float 0.01 run random value 0..70
execute store result storage dsb:temp ItemBomb.MotionY float 0.01 run random value 0..35
execute store result storage dsb:temp ItemBomb.MotionZ float 0.01 run random value 0..70
#Отрицательное направление
execute store result score *var1 variables run random value 0..1
execute if score *var1 variables matches 0 run data modify storage dsb:temp ItemBomb.SignX set value "-"
execute store result score *var1 variables run random value 0..1
execute if score *var1 variables matches 0 run data modify storage dsb:temp ItemBomb.SignZ set value "-"
execute store result score *var1 variables run random value 0..1
execute if score *var1 variables matches 0 run data modify storage dsb:temp ItemBomb.SignY set value "-"

#Призыв предмета
function entities:bosses/sea_king/abilities/water_bomb/summon_item with storage dsb:temp ItemBomb
#Цикл
scoreboard players add @s RecursionDepth 1
execute if score @s RecursionDepth matches ..100 run function entities:bosses/sea_king/abilities/water_bomb/set_values