#Время + название
$execute store result bossbar dsb:dep_$(out) value run scoreboard players get @s time_dependence
#
$bossbar set dsb:dep_$(out) name {"translate":"dsb.events.dependence_from_kp.bossbar", "with":[{"score":{"objective":"know.piece_to_dependence", "name":"@s"}}, {"storage":"dsb:bossbar", "nbt":"depFromKP.$(out)"}]}

#если излечился
$execute if score @s time_dependence matches 0 run return run bossbar set dsb:dep_$(out) visible false

#цикл
$function dc:get_call {tick:40, command:"function dsb:events/knowledge_piece/dependence/bossbar/loop_visible {out:$(out)}", requirePos:false, requireEntity:true}