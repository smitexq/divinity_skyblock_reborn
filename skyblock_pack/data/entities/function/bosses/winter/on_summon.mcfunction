function dc:get_call {tick:1, command:"item replace entity @s weapon with stone", requirePos:false, requireEntity:true}
function dc:get_call {tick:2, command:"item replace entity @s weapon with air", requirePos:false, requireEntity:true}
# item replace entity @s weapon with stone

###Задаем имя, хп, здоровье, визуал
data merge entity @s {Team:"WinterQueen", CanPickUpLoot:0, PersistenceRequired:1b, IsBaby:0b, LeftHanded:0b, Silent:1b, ArmorItems:[{},{},{},{id:"player_head",count:1b, components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2ZlOGM1NzM3ZjY0OTIyMzdiM2E0MTNjMGRhYjg2NjQwYzgxY2Y2MDJjMjBmYzJkMTM4YTM2NzMxZDlmMmY5MCJ9fX0="}]}}}], HandItems:[{},{}], ArmorDropChances:[0f,0f,0f,0f], HandDropChances:[0f,0f], Tags:["WinterBoss","entity","Boss"], CustomName:'{"translate":"dsb.entity.boss.winter","color":"aqua"}', Health:1024, attributes:[{id:"minecraft:max_health",base:1024},{id:"minecraft:attack_damage",base:19},{id:"minecraft:movement_speed",base:0.32},{id:"minecraft:armor",base:8},{id:"minecraft:follow_range",base:100}]}
###
#то что нет оружия
tag @s add nothing

#За кол-во
execute store result score *var1 variables store result storage dsb:temp num int 1 run list
execute if score *var1 variables matches 2.. run function entities:bosses/soul_of_abyss/add_per_player with storage dsb:temp

#есть ли рядом игрок
function dc:get_call {tick:30, command:"function entities:bosses/winter/conditions/time", requirePos:false, requireEntity:true}


#Выбор способности
function dc:get_call {tick:100, command:"function entities:bosses/winter/conditions/phase/select_ability", requirePos:false, requireEntity:true}

#Смена оружия
function dc:get_call {tick:400, command:"function entities:bosses/winter/abilities/change_weapon/select", requirePos:false, requireEntity:true}
