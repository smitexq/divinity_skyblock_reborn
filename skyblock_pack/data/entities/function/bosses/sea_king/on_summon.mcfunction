###Задаем имя, хп, здоровье, визуал
data merge entity @s {IsBaby:0b, LeftHanded:0b, ArmorItems:[{},{},{},{id:"player_head",count:1b, components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2YyMTA1MmQxOGExZWQ2ZTcwNzMzODQ4MzBlN2IyODUzMTBhN2RjMGE4MGIzNjQzMWRiNjU0ZDNlM2RhZThkMCJ9fX0="}]}}}], ArmorDropChances:[0f,0f,0f,0f], HandItems:[{id:"heart_of_the_sea", count:1, components:{"minecraft:enchantment_glint_override":1b}}, {}], HandDropChances:[0f,0f], Tags:["drowned_king","entity","Boss"], CustomName:'{"translate":"dsb.entity.boss.drowned_king","color":"aqua"}', Health:300, attributes:[{id:"minecraft:max_health",base:300},{id:"minecraft:attack_damage",base:8},{id:"minecraft:movement_speed",base:0.3},{id:"minecraft:armor",base:3.5}]}

# data modify entity @s CustomName set value '{"translate":"dsb.entity.boss.drowned_king","color":"aqua"}'
###

#За кол-во
execute store result score *var1 variables store result storage dsb:temp num int 1 run list
execute if score *var1 variables matches 2.. run function entities:bosses/soul_of_abyss/add_per_player with storage dsb:temp


#Проверка на время суток + есть ли рядом игрок
function dc:get_call {tick:30, command:"function entities:bosses/sea_king/conditions/time", requirePos:false, requireEntity:true}


#Каждые 10 секунд если рядом нет игрока то зубастая пасть
function dc:get_call {tick:80, command:"function entities:bosses/sea_king/abilities/1_phase_4_sec", requirePos:false, requireEntity:true}
function dc:get_call {tick:300, command:"function entities:bosses/sea_king/abilities/1_phase_20_sec", requirePos:false, requireEntity:true}