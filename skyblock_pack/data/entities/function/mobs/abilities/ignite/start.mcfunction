#Выдаем огнестойкость
effect give @s minecraft:fire_resistance 30 0
playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ 1

#Частицы спиралью снизу-вверх вокруг мини-босса (используется не только частицы огня, но и оранжевые-желтые, dust, falling lava, lava)

#круговая огненная волна (и только после того, как она закончится, то появляется костер, а остальные команды ниже через DC)

#Призываем 4 маркера, которые будут двигаться в в 4-х направлениях
scoreboard players reset @s use.ignite
execute align xyz positioned ~0.5 ~ ~0.5 run function entities:mobs/abilities/ignite/summon_markers
#начинаем двигать каждый маркер в своем направлении
execute as @e[type=marker,tag=ignite,distance=..1,limit=4] at @s positioned ^ ^ ^1 run function dc:get_call {tick:2, command:"function entities:mobs/abilities/ignite/at_marker", requirePos:true, requireEntity:true}

#Очищаем счетчик
scoreboard players reset @s use.ignite