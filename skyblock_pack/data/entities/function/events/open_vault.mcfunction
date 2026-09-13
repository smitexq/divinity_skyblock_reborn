advancement revoke @s only entities:player_hurt_entity/bosses_for_reward/open_vault

execute as @e[type=marker, tag=Vault] at @s run function entities:events/check_vault