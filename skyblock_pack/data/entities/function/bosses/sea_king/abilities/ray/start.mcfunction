#Подготавливающий луч, задающий траекторию
scoreboard players set .entity slowcast 0
scoreboard players set .type slowcast 101
scoreboard players set .recursions slowcast 20
scoreboard players set .iterations slowcast 4

execute as @a[distance=..25] at @s run playsound minecraft:block.beacon.activate ambient @s ~ ~ ~ 3 2
effect give @a[distance=..25] minecraft:slowness 1 2

execute anchored eyes facing entity @p eyes positioned ^ ^-0.4 ^0.7 run function entities:bosses/sea_king/abilities/ray/prepend_launch
execute anchored eyes facing entity @p eyes positioned ^ ^-0.4 ^0.7 rotated ~8 ~ run function entities:bosses/sea_king/abilities/ray/prepend_launch
execute anchored eyes facing entity @p eyes positioned ^ ^-0.4 ^0.7 rotated ~-8 ~ run function entities:bosses/sea_king/abilities/ray/prepend_launch