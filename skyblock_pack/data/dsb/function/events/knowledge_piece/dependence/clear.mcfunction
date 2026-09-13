tag @s remove DependenceFromKnowPiece

###Все задачи вызванные очистить
function dc:gu/generate

data modify storage dsb:dc_remove temp.UUID set from storage gu:main out
data modify storage dsb:dc_remove temp.command set value "function dsb:events/knowledge_piece/dependence/effects"
function dc:clear_schedule with storage dsb:dc_remove temp
###

#записываем значение в переменную
$data modify storage dsb:temp count set from storage dsb:bossbar depFromKP.$(out)

#узнаем сколько нужно отнять интеллекта
execute store result score *var1 variables run data get storage dsb:temp count
execute store result score *var2 variables run scoreboard players get @s know.piece_to_dependence

scoreboard players operation *var1 variables -= *var2 variables
scoreboard players operation *var1 variables *= #15 variables
scoreboard players operation *var1 variables /= #10 variables

scoreboard players reset @s know.piece_to_dependence
execute if score *var1 variables matches 1.. run function dsb:events/knowledge_piece/dependence/remove_ai with storage dsb:temp
#

tellraw @s {"translate":"dsb.events.dependence.cure","color":"green"}
execute at @s run playsound minecraft:entity.zombie_villager.converted ambient @s