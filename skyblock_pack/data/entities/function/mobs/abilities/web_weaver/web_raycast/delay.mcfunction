#Дополнительно создаем маркер, от имени которого бросим паутину, так как основной маркер удаляем
summon marker ~ ~ ~ {Tags:["this"]}
data modify entity @e[type=marker,tag=this,limit=1] Rotation set from entity @s Rotation

#Так как мы удалим storage WebWeaver, то записываем параметры (градус на который поворачиваем) в {}
$execute as @e[type=marker,tag=this,limit=1] at @s run function dc:get_call {tick:$(DelayTick), command:"function entities:mobs/abilities/web_weaver/select_other_direction {x:$(x),y:$(y)}", requirePos:false, requireEntity:true}

tag @e[type=marker,tag=this,limit=1] remove this