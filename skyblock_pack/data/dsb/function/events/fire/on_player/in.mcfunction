#Последовательность действий
tag @s add initFire
scoreboard players set @s CreateFire 0
#Интеракт для считывания ПКМ ЛКМ
execute positioned ^ ^ ^0.5 summon interaction run function dsb:events/fire/on_interact with storage gu:main
#
function dsb:events/fire/on_player/create_sequence with storage gu:main