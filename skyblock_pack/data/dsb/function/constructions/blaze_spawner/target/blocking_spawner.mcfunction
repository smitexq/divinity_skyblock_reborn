setblock ~1 ~ ~ iron_bars destroy
setblock ~-1 ~ ~ iron_bars destroy
setblock ~ ~ ~1 iron_bars destroy
setblock ~ ~ ~-1 iron_bars destroy

$summon minecraft:interaction ~1 ~ ~ {Tags:["$(out)","block"]}
$summon minecraft:interaction ~-1 ~ ~ {Tags:["$(out)","block"]}
$summon minecraft:interaction ~ ~ ~1 {Tags:["$(out)","block"]}
$summon minecraft:interaction ~ ~ ~-1 {Tags:["$(out)","block"]}
$summon minecraft:interaction ~ ~1 ~ {Tags:["$(out)","block"]}

#Устанавливаем время работы спавнера
scoreboard players operation @s BlazeSpawner = *var1 variables
scoreboard players set *var1 variables 20
scoreboard players operation @s BlazeSpawner *= *var1 variables