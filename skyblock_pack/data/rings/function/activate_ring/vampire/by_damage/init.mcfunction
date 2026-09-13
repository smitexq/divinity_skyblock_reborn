#Активируется от rings:activate_ring/phe_branch (player_hurt_entity)

#Проверка есть ли кд отхила
execute if entity @s[tag=kdAfterHealing] run return fail

#Если текущее здоровье равно максимальному, то хилить не нужно и можно завершать функцию
execute store result score *var1 variables run data get entity @s Health 100
execute store result score *var2 variables run attribute @s minecraft:max_health get 100
execute if score *var1 variables = *var2 variables run return fail

#Тег на кд хила
tag @s add kdAfterHealing
function dc:get_call {tick:40, command:"tag @s remove kdAfterHealing", requirePos:false, requireEntity:true}


#Записываем максимальное здоровье игрока (без учета амулета жизни)
execute store result storage dsb:temp Health.Max float 1 run attribute @s minecraft:max_health base get

#Записываем текущее здоровье игрока и прибавляем к нему 0.25
execute store result score *var1 variables run data get entity @s Health 100
execute store result storage dsb:temp Health.Actual float 0.01 run scoreboard players add *var1 variables 25
tellraw @a {"storage":"dsb:temp", "nbt":"Health", "color":"gold"}
#Возвращаем восстановленное здоровье игроку
function rings:activate_ring/vampire/by_damage/set_attribute with storage dsb:temp Health

data remove storage dsb:temp Health