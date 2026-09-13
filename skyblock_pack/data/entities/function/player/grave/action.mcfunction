advancement revoke @s only entities:events/actions/click_grave
#Достижение забрать вещи из могилки
advancement grant @s only dsb:skyblock/travel/grave

#Пометка
tag @s add this

#Ищем этот interaction
execute as @e[type=interaction, tag=GraveInteraction, nbt={interaction:{}}] run function dc:gu/generate
execute as @e[type=interaction, tag=GraveInteraction, nbt={interaction:{}}] at @s run function entities:player/grave/check_inv with storage gu:main

tag @s remove this