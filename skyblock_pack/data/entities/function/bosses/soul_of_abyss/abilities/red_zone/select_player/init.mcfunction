tag @a remove SoulOfAbyssSelect
#Если способка закончилось
execute if entity @s[tag=!StartRedZone] run return 0

#Проверяем есть ли атакующий игрок на арене, если нет, то берем просто ближайшего
execute on attacker if entity @s[gamemode=!spectator, nbt=!{Health:0f}] at @s if entity @e[type=marker,tag=SoulOfAbyssArenaMiddle, distance=..22] run tag @s add SoulOfAbyssSelect
execute unless entity @a[tag=SoulOfAbyssSelect] as @p[distance=..22, gamemode=!spectator, nbt=!{Health:0f}] run tag @s add SoulOfAbyssSelect

#Цикл поиска игрока
function dc:get_call {tick:20, command:"function entities:bosses/soul_of_abyss/abilities/red_zone/select_player/init", requirePos:true, requireEntity:true}