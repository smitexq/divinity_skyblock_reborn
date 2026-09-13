advancement revoke @s only entities:player_hurt_entity/bosses/soul_of_abyss_kill_point
#убираем текст со здоровьем спавнера
execute as @e[type=text_display, tag=SoulOfAbyss_HP] at @s unless entity @e[type=ghast, tag=2phase, distance=..2] run function entities:bosses/soul_of_abyss/abilities/2phase/remove_point

#Если игрок уничтожил кристаллы
execute unless entity @e[type=ghast, tag=SoulOfAbyss_HELER_push] run function entities:bosses/soul_of_abyss/conditions/2phase/remove