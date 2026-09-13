#Удаляем маркер
kill @s

#Частицы и звук призыва
particle reverse_portal ~ ~0.5 ~ 0.1 0.1 0.1 4 10 force
playsound minecraft:entity.zombie.infect ambient @a ~ ~1 ~ 2

#Шанс на определенную группу мобов
execute store result score *var1 variables run random value 1..10

#70% на обычного моба
execute if score *var1 variables matches 1..7 run return run function entities:mobs/abilities/military/mobs/common
#20% на нестандартного
execute if score *var1 variables matches 8..9 run return run function entities:mobs/abilities/military/mobs/uncommon
#10% на редкого
execute if score *var1 variables matches 10 run return run function entities:mobs/abilities/military/mobs/rare