#Активируется от rings:activate_ring/phe_branch (player_hurt_entity)

#Помечаем текущего игрока
tag @s add this
#Относительно всех мобов выполняем проверку
execute as @e[type=#entities:hostile_mobs] at @s if function rings:activate_ring/hawkring/check_attacker run function rings:activate_ring/hawkring/on_entity
tag @s remove this