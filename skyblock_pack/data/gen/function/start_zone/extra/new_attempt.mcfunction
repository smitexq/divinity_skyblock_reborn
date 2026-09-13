execute store result score #temp gen run data get storage dsb_gen:islands AdditionalStones
#Если сгенерировали все каменные острова, то больше не проверяем
execute if score #temp gen matches 0 run return 0

execute store result storage dsb_gen:islands AdditionalNum int 1 run scoreboard players remove #temp gen 1
function gen:start_zone/extra/by_new_player with storage dsb_gen:islands