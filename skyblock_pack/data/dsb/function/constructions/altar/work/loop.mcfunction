scoreboard players add *process Altar 1

###Звук работы
execute if score #4_items Altar matches 0 if score *process Altar matches 12..76 run playsound minecraft:entity.wither_skeleton.ambient ambient @a ~ ~ ~ 1 0.1
execute if score #4_items Altar matches 1 if score *process Altar matches 12..44 run playsound minecraft:entity.wither_skeleton.ambient ambient @a ~ ~ ~ 1 0.1
###

#убийство мобов
execute if score *process Altar matches 1 if score #chicken Altar matches 1 as @e[type=minecraft:chicken,sort=nearest,distance=..4.5,limit=1] run function dsb:constructions/altar/work/entities_no_ai


#красные частицы алтаря
execute if score *process Altar matches ..11 positioned ~ ~-2.45 ~ run function dsb:constructions/altar/work/particle/red_star

#Впитывание предметов (анимация)
execute if score *process Altar matches 12..20 positioned ~ ~-1.15 ~ run function dsb:constructions/altar/work/particle/order {tag:1, score:20}
execute if score *process Altar matches 20..28 positioned ~ ~-1.15 ~ run function dsb:constructions/altar/work/particle/order {tag:2, score:28}
execute if score *process Altar matches 28..36 positioned ~ ~-1.15 ~ run function dsb:constructions/altar/work/particle/order {tag:3, score:36}
execute if score *process Altar matches 36..44 positioned ~ ~-1.15 ~ run function dsb:constructions/altar/work/particle/order {tag:4, score:44}
execute if score *process Altar matches 44..52 positioned ~ ~-1.15 ~ run function dsb:constructions/altar/work/particle/order {tag:5, score:52}
execute if score *process Altar matches 52..60 positioned ~ ~-1.15 ~ run function dsb:constructions/altar/work/particle/order {tag:6, score:60}
execute if score *process Altar matches 60..68 positioned ~ ~-1.15 ~ run function dsb:constructions/altar/work/particle/order {tag:7, score:68}
execute if score *process Altar matches 68..76 positioned ~ ~-1.15 ~ run function dsb:constructions/altar/work/particle/order {tag:8, score:76}
#

#Если только 4 предмета, то заканчиваем
execute if score #4_items Altar matches 1 if score *process Altar matches 44..46 positioned ~ ~-2.45 ~ run function dsb:constructions/altar/work/particle/red_star
execute if score #4_items Altar matches 1 if score *process Altar matches 46 run return run function dsb:constructions/altar/work/finish

#Если все 8
execute if score *process Altar matches 76..78 positioned ~ ~-2.45 ~ run function dsb:constructions/altar/work/particle/red_star
execute if score *process Altar matches 78 run return run function dsb:constructions/altar/work/finish

#Цикл работы
execute if score *process Altar matches 1.. run function dc:get_call {tick:10, command:"function dsb:constructions/altar/work/loop", requirePos:false, requireEntity:true}