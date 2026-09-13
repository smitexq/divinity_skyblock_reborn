advancement revoke @s only entities:bosses/kill_a_drowned_king

function entities:bosses/sea_king/conditions/remove_tasks

tellraw @a {"translate":"dsb.events.bosses.kill_a_drowned_king","color":"gold"}
execute as @a at @s run playsound minecraft:entity.blaze.death ambient @a ~ ~ ~ 2 2

###Выдача ключей всем игрокам, которые наносили урон боссу
execute as @a[advancements={entities:player_hurt_entity/bosses_for_reward/drowned_king=true}] at @s run loot spawn ~ ~ ~ loot dsb:items/tools/sea_king_key
execute as @a[advancements={entities:player_hurt_entity/bosses_for_reward/drowned_king=true}] run advancement grant @s only dsb:skyblock/entities/sea_king

#Спавн ящика с лутом для игроков
execute at @e[type=marker, tag=DrownedArenaMiddle] summon marker run function dc:get_call {tick:60, command:"function gen:generate/dungeon/spawn_vault", requirePos:false, requireEntity:true}

#Убрать биом пустоты на высоте