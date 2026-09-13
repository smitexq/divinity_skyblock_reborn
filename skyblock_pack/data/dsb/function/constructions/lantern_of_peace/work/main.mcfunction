$function dc:get_call {tick:1800, command:"function dsb:constructions/lantern_of_peace/work/main {out:$(out)}", requirePos:false, requireEntity:true}

tag @s remove BlockingBossSpawn

#Кол-во останков
$execute store result score *var1 variables run data get storage dsb:cts LanternOfPeace.$(out).itemCount
#Если закончились гнилые останки, то блокировка спавна больше не работает
execute if score *var1 variables matches 0 run return 0

tag @s add BlockingBossSpawn

#Отнимаем один предмет
$execute store result storage dsb:cts LanternOfPeace.$(out).itemCount int 1 run scoreboard players remove *var1 variables 1
execute if score *var1 variables matches 0 run function dsb:constructions/lantern_of_peace/work/deactivate
#Виузал
$execute as $(out) at @s run function dsb:constructions/lantern_of_peace/work/vizual with storage gu:main