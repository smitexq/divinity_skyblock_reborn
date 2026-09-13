advancement revoke @s only dsb:events/use/drink_sea_cup

#В слоте уже есть невидимая картошка, чтобы в этот слот нельзя было что то взять
#Через 2 тика заменится на кубок
function dc:get_call {tick:2, command:"function dsb:events/consume/sea_cup/delay", requirePos:false, requireEntity:true}


#Эффекты
effect give @s minecraft:regeneration 10
effect give @s minecraft:resistance 15
effect give @s minecraft:conduit_power 60 2
execute if entity @s[nbt=!{Fire:-20s}] run summon minecraft:potion ~ ~ ~ {Silent:1b, Item:{id:"minecraft:splash_potion", components:{"minecraft:potion_contents":{potion:"water"}}}}


#Правило на бесконечный источник воды
execute if score #consumeSeaCup GameStage matches 1 run return fail

particle minecraft:sonic_boom ~ ~1 ~ 1.5 1.5 1.5 0 4 force
particle minecraft:falling_water ~ ~1.5 ~ 2 2 2 0 100 force
particle minecraft:cloud ~ ~1.5 ~ 1 1 1 0.2 25 force

execute as @a at @s run playsound minecraft:ui.toast.challenge_complete ambient @s
tellraw @a {"translate":"dsb.events.sea_cup.to_water","color":"gold"}


gamerule waterSourceConversion true
scoreboard players set #consumeSeaCup GameStage 1