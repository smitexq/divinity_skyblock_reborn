advancement grant @s only dsb:skyblock/diff/head

tag @s add DependenceFromKnowPiece
#900 секунд - 15 минут
scoreboard players set @s time_dependence 900
#Для подсчета кол-во съеденных фрагментов за это время
scoreboard players set @s know.piece_to_dependence 0

#Сколько нужно съесть фрагментов за 15 минут
execute store result storage dsb:temp count int 1 run random value 2..4 dsb:get_count_k.p

#Сообщение+звук
tellraw @s {"translate":"dsb.events.dependence_from_kp", "color":"red", "with":[{"storage":"dsb:temp", "nbt":"count"}]}
playsound minecraft:entity.zombie_villager.cure ambient @s ~ ~ ~ 0.5

#через 1 минуту эффекты
function dc:get_call {tick:1200, command:"function dsb:events/knowledge_piece/dependence/effects", requirePos:false, requireEntity:true}
#Боссбар
function dsb:events/knowledge_piece/dependence/bossbar/init


#Все задачи вызванные очистить
function dc:gu/generate

data modify storage dsb:dc_remove temp.UUID set from storage gu:main out
data modify storage dsb:dc_remove temp.command set value "scoreboard players remove @s know.piece_to_dependence 1"
function dc:clear_schedule with storage dsb:dc_remove temp

#Нужно, чтобы после выдачи зависимости не сработало повышение интеллекта
return fail