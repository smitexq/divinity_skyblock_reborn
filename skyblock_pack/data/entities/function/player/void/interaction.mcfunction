data merge entity @s {height:1.2, width:0.8, Tags:["GraveInteraction"]}

#Узнаем UUID могилки
function dc:gu/generate
data modify storage dsb:grave new.Grave_UUID set from storage gu:main out

#Ник
summon minecraft:text_display ~ ~ ~ {text:'{"selector":"@p[tag=get_nick]"}', billboard:center, view_range:0.35f, see_through:false}
#Тег uuid магилки, чтобы потом убрать только этот текст
execute as @e[type=text_display, sort=nearest, limit=1] run data modify entity @s Tags append from storage gu:main out


### Какой тип текстуры будет
execute store result score *var1 variables run random value 1..2 dsb:get_grave_type
# первый вариант
execute if score *var1 variables matches 1 as @e[type=text_display, sort=nearest, limit=1] at @s run tp @s ~ ~1.2 ~
execute if score *var1 variables matches 1 run return run function dsb:events/displays/graves/1 with storage dsb:grave new


# высчитываем день
execute store result storage dsb:grave new.day int 1 run function dsb:events/calculate_day

# второй вариант
execute as @e[type=text_display, sort=nearest, limit=1] at @s run tp @s ~ ~0.8 ~
function dsb:events/displays/graves/2 with storage dsb:grave new