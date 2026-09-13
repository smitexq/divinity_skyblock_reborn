advancement revoke @s only entities:bosses/kill_a_soul_of_abyss

bossbar set dsb:boss.soul_of_abyss visible false
execute as @a at @s run playsound minecraft:entity.wither.death ambient @s ~ ~ ~ 1

function entities:bosses/soul_of_abyss/remove_tasks

tellraw @a {"translate":"dsb.events.bosses.kill_a_soul_of_abyss","color":"gold"}


#Спавн мешка с лутом
execute as @a[advancements={entities:player_hurt_entity/bosses_for_reward/soul_of_abyss=true}] at @s run loot spawn ~ ~ ~ loot gen:dungeon/soul_of_abyss
execute as @a[advancements={entities:player_hurt_entity/bosses_for_reward/soul_of_abyss=true}] run advancement grant @s only dsb:skyblock/entities/soul_of_abyss
advancement revoke @a only entities:player_hurt_entity/bosses_for_reward/soul_of_abyss