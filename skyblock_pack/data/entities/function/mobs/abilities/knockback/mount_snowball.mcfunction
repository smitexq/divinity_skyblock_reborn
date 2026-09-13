#Спавн с заданным Motion
$summon snowball ~ ~0.1 ~ {Motion:$(Motion),Tags:["this"], Item:{id:"minecraft:stone",components:{"minecraft:item_model":"dsb:empty"}}}
#Сажаем
ride @s mount @e[type=snowball,tag=this,sort=nearest,limit=1]
#Через 30 тиков высаживаем игрока
execute as @e[type=snowball,tag=this,sort=nearest,limit=1] run function dc:get_call {tick:30, command:"kill @s", requirePos:false, requireEntity:true}
#помечаем игрока и его снежок одинаковыми значениями, чтобы потом можно было найти друг друга
scoreboard players add *global use.powerful_jump 1
scoreboard players operation @s use.powerful_jump = *global use.powerful_jump
scoreboard players operation @e[type=minecraft:snowball,tag=this,sort=nearest,limit=1] use.powerful_jump = *global use.powerful_jump

#Удаляем тег со снежка
tag @e[type=minecraft:snowball,tag=this,sort=nearest,limit=1] remove this