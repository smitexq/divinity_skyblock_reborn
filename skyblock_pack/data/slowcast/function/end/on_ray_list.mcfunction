#Заряженный луч
execute if score #type slowcast matches 0 run function entities:mobs/abilities/charged_ray/raycast/end
#Иссушающая буря
execute if score #type slowcast matches 1 run data remove storage dsb:temp WitherStorm
#Заряженный отравленный луч
execute if score #type slowcast matches 4 run function entities:mobs/abilities/charged_ray_poison/raycast/end

#Душа Бездны
execute if score #type slowcast matches 201 as @a[distance=..30] at @s run playsound minecraft:entity.wither.hurt ambient @s ~ ~ ~ 0.2
execute if score #type slowcast matches 201 run return run particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1 force

#Королева Элеум Лойс
execute if score #type slowcast matches 302 run return run function entities:bosses/winter/abilities/dash/get_player

#execute if score #type slowcast matches 2 run function entities:mobs/abilities/web_weaver/web_raycast/end
#execute if score #type slowcast matches 2 run function slowcast:end/end1
# ... repeat