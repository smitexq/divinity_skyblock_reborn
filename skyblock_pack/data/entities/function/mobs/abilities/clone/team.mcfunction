#Удаление из команды, если клонов больше нет
$execute unless entity @e[tag=unicCloneId-$(out)] run return run team leave @a

#Добавление игроков в команду
team join ShadowClone @a


$function dc:get_call {tick:10, command:"function entities:mobs/abilities/clone/team {out:$(out)}", requirePos:false, requireEntity:true}