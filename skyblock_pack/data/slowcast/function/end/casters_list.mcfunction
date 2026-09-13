#Заряженный луч
execute if score #type slowcast matches 0 run return run function entities:mobs/abilities/charged_ray/return_name
#Паутиновый ткач
execute if score #type slowcast matches 2 run return run kill @s
#Заряженный отравленный луч
execute if score #type slowcast matches 4 run return run function entities:mobs/abilities/charged_ray/return_name
# ... repeat


#Душа Бездны
execute if score #type slowcast matches 201 run return run kill @s

#Королева Элеум Лойс
execute if score #type slowcast matches 302 run return run function dc:get_call {tick:5, command:"function entities:bosses/winter/abilities/dash/to_next_player", requirePos:false, requireEntity:true}
