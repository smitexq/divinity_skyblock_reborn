###Задаем имя, хп, здоровье, визуал
data merge entity @s {Team:"SoulOfAbyss", IsBaby:0b, LeftHanded:0b, Silent:1b, ArmorItems:[{},{},{},{id:"player_head",count:1b, components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTk4YTQ5Y2E1NGMzZWE2N2E4NmVjOGI5ZjE2YmRmNDZhYTVlZmM1YWVlZmI3YTE5Y2NjYzc5NjJlODIxYTU5OSJ9fX0="}]}}}], ArmorDropChances:[0f,0f,0f,0f], HandItems:[{id:"minecraft:stone", count:1, components:{"minecraft:item_model":"dsb:empty"}}, {}], HandDropChances:[0f,0f], Tags:["SoulOfAbyss","entity","Boss"], CustomName:'{"translate":"dsb.entity.boss.soul_of_abyss","color":"red"}', Health:700, attributes:[{id:"minecraft:max_health",base:700},{id:"minecraft:attack_damage",base:10},{id:"minecraft:movement_speed",base:0.32},{id:"minecraft:armor",base:3.5},{id:"minecraft:follow_range",base:60}], active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:999999999,show_particles:0b}]}
###

#За кол-во
execute store result score *var1 variables store result storage dsb:temp num int 1 run list
execute if score *var1 variables matches 2.. run function entities:bosses/soul_of_abyss/add_per_player with storage dsb:temp

#есть ли рядом игрок
function dc:get_call {tick:30, command:"function entities:bosses/soul_of_abyss/conditions/time", requirePos:false, requireEntity:true}

#Потеря контроля
function dc:get_call {tick:140, command:"function entities:bosses/soul_of_abyss/abilities/1_phase_7_sec", requirePos:false, requireEntity:true}
#Красные тени
function dc:get_call {tick:100, command:"function entities:bosses/soul_of_abyss/abilities/1_phase_5_sec", requirePos:false, requireEntity:true}