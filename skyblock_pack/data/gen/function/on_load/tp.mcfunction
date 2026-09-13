gamemode adventure @s[gamemode=survival]

# телепорт в хаб
execute unless dimension gen:void_dimension run function gen:on_load/hub_text/lobby_command_blocks/teleport_to_spawn with storage dsb:hub Spawn
#

# Если в хабе упал на пол
execute as @e[type=marker, tag=hub_floor] at @s positioned ~-25 ~ ~-25 as @a[dx=50, dz=50, dy=1] run function gen:on_load/hub_text/lobby_command_blocks/teleport_to_spawn with storage dsb:hub Spawn


# Обновление текста
function gen:on_load/hub_text/update_text
execute if score *start gameplay matches 1 run return fail

###Если еще не сгенерирована стартовая платформа в пустоте
execute if score #voidPlatform gameplay matches 1 run return 0
scoreboard players set #voidPlatform gameplay 1
#чтобы не упал ниже платформы
execute as @a run attribute @s minecraft:gravity base set 0


execute in gen:void_dimension positioned 0 60 0 run function dc:get_call {tick:9, command:"forceload add ~ ~", requirePos:true, requireEntity:false}

execute in gen:void_dimension positioned 0 60 0 run function dc:get_call {tick:10, command:"execute positioned -21 40 -21 run place template gen:lobby", requirePos:true, requireEntity:false}
execute in gen:void_dimension positioned 0 60 0 run function dc:get_call {tick:20, command:"forceload remove ~ ~", requirePos:true, requireEntity:false}
function dc:get_call {tick:80, command:"function gen:on_load/hub_text/lobby_command_blocks/teleport_to_spawn with storage dsb:hub Spawn", requirePos:false, requireEntity:true}

#возвращаем гравитацию
function dc:get_call {tick:20, command:"attribute @s minecraft:gravity base set 0.08", requirePos:false, requireEntity:true}