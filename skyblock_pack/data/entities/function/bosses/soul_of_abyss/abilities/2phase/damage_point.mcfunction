advancement revoke @s only entities:player_hurt_entity/bosses/soul_of_abyss_2phase
#Обновления отображения здоровья
execute as @e[type=ghast, tag=2phase, nbt={HurtTime:10s}] at @s run function entities:bosses/soul_of_abyss/abilities/2phase/on_ghast