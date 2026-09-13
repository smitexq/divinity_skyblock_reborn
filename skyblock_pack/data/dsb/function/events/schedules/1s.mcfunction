schedule function dsb:events/schedules/1s 1s

#Для каждого игрока
execute as @a run function dsb:events/schedules/per_players

#Поиск мини боссов
execute as @e[type=#entities:entities_bosses,tag=!entity] at @s run function entities:mob_type