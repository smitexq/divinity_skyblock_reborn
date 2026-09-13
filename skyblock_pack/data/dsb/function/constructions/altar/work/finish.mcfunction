			#===============#
			# made by Smite #
			#===============#
			#
execute as @e[type=minecraft:armor_stand,tag=AltarShelf,tag=middle,limit=1] run function dsb:constructions/altar/work/give_result

particle soul ~ ~-1 ~ 2 1.5 2 0.1 25 force

#Удаление тегов очередности
tag @e[type=armor_stand,tag=AltarShelf] remove 1
tag @e[type=armor_stand,tag=AltarShelf] remove 2
tag @e[type=armor_stand,tag=AltarShelf] remove 3
tag @e[type=armor_stand,tag=AltarShelf] remove 4
tag @e[type=armor_stand,tag=AltarShelf] remove 5
tag @e[type=armor_stand,tag=AltarShelf] remove 6
tag @e[type=armor_stand,tag=AltarShelf] remove 7
tag @e[type=armor_stand,tag=AltarShelf] remove 8

#
function dsb:constructions/altar/base_score
#Звук
playsound minecraft:block.beacon.power_select ambient @a
#Возвращаем возможность вставления предметов
execute as @e[type=armor_stand,tag=AltarShelf] run data modify entity @s DisabledSlots set value 4079166