function dc:get_call {tick:1200, command:"function entities:events/traders/load/detect_time", requirePos:false, requireEntity:false}

#Проверяем разницу между прошлым спавном и текущим днем
execute store result score *var1 variables run function dsb:events/calculate_day
scoreboard players operation *var1 variables -= #previousDay variables

#Если не прошло минимум 4 дня, то ничего не делаем
execute unless score *var1 variables matches 4.. run return 0

#Проверяем что сейчас утро (0-1199 тиков)
execute store result score *var2 variables run time query daytime
execute unless score *var2 variables matches 0..1199 run return 0

###Если уже 7ой день, значит шанс 100% на появление
execute if score *var1 variables matches 7.. run return run function entities:events/traders/load/success


#Иначе проверяем удачу игроков
scoreboard players set *var1 variables 60
execute as @a[sort=random, limit=3] run function entities:events/traders/load/on_players

execute store result score *var2 variables run random value 1..100 dsb:traders/spawn/get_chance_per_players
# tellraw @a {"score":{"objective":"variables","name":"*var1"},"color":"gold"}
# tellraw @a {"score":{"objective":"variables","name":"*var2"},"color":"red"}
#Если сработал шанс
execute if score *var2 variables <= *var1 variables run function entities:events/traders/load/success