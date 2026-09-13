#Частицы и звук ломания блоков
particle minecraft:dust{color:[0f,1f,1f],scale:3f} ^ ^ ^0.5 0.7 0.7 0.7 0 30 force @a
playsound minecraft:entity.wither.break_block ambient @a ~ ~ ~ 2 1.1

#Сколько блоков МОЖЕТ сломать
execute store result score *var1 variables run random value 3..5
#В центре блока ломаем его
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function entities:mobs/abilities/charged_ray/raycast/break_block {x:"", y:"", z:""}

#Очищаем хранилище
data remove storage dsb:temp coords