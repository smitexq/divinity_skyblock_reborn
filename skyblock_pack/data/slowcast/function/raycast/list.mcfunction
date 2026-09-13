execute if score @s slowcast.type matches 0 run return run function entities:mobs/abilities/charged_ray/raycast/loop
execute if score @s slowcast.type matches 1 run return run function entities:mobs/abilities/wither_storm/raycast/loop
execute if score @s slowcast.type matches 2 run return run function entities:mobs/abilities/web_weaver/web_raycast/loop
execute if score @s slowcast.type matches 3 run return run function entities:mobs/abilities/summon_fangs/loop
execute if score @s slowcast.type matches 4 run return run function entities:mobs/abilities/charged_ray_poison/raycast/loop


#Морской царь
execute if score @s slowcast.type matches 101 run return run function entities:bosses/sea_king/abilities/ray/loop
execute if score @s slowcast.type matches 102 run return run function entities:bosses/sea_king/abilities/ray/loop_ray

#Душа Бездны
execute if score @s slowcast.type matches 201 run return run function entities:bosses/soul_of_abyss/abilities/hexagon/loop

#Королева Элеум Лойс
execute if score @s slowcast.type matches 301 run return run function entities:bosses/winter/abilities/lines/raycast/slow_loop
execute if score @s slowcast.type matches 302 run return run function entities:bosses/winter/abilities/dash/raycast_loop
execute if score @s slowcast.type matches 303 run return run function entities:bosses/winter/abilities/knockback/raycast_loop

# execute if score @s slowcast.type matches 1 run function slowcast:raycast/loop
# execute if score @s slowcast.type matches 2 run function slowcast:raycast/loop2

# # ... repeat