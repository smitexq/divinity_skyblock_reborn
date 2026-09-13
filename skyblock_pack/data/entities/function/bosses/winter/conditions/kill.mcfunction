advancement revoke @s only entities:bosses/kill_a_winter_queen

execute if score *summon WinterQueen matches 0 run return fail
scoreboard players set *summon WinterQueen 0

bossbar set dsb:boss.winter visible false
execute as @a at @s run playsound minecraft:event.mob_effect.raid_omen ambient @s
execute as @a at @s run playsound minecraft:block.anvil.place ambient @s ~ ~ ~ 0.3 0.5
execute as @a at @s run playsound minecraft:entity.allay.death ambient @s ~ ~ ~ 2 1

function entities:bosses/winter/conditions/remove_tasks

tellraw @a {"translate":"dsb.events.bosses.kill_a_winter_queen","color":"gold"}


#Спавн мешка с лутом
# execute as @a[advancements={entities:player_hurt_entity/bosses_for_reward/winter_queen=true}] at @s run loot spawn ~ ~ ~ loot gen:dungeon/winter_queen
execute as @a[advancements={entities:player_hurt_entity/bosses_for_reward/winter_queen=true}] at @s run loot spawn ~ ~ ~ loot dsb:items/recipes/rituals/end_frame
execute as @a[advancements={entities:player_hurt_entity/bosses_for_reward/winter_queen=true}] run advancement grant @s only dsb:skyblock/entities/winter_queen
advancement revoke @a only entities:player_hurt_entity/bosses_for_reward/winter_queen

#Телепорт к картине
function dc:get_call {tick:200, command:"function entities:bosses/winter/conditions/teleport_after_win with storage dsb_gen:gen FrozenCastle.Picture", requirePos:false, requireEntity:false}
