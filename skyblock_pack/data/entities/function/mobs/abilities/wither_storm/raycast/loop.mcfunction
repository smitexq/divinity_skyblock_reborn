#Code Cloud Wolf's
scoreboard players remove #temp slowcast.itt 1

execute if score #temp slowcast.itt matches 0 run tp @s ~ ~ ~
#Частицы торнадо
function entities:mobs/abilities/wither_storm/circle
#Если ураган сталкивается с твердой поверхностью, то останавливается
#execute unless block ~ ~ ~ #entities:wither_storm run function slowcast:stop

execute if score #temp slowcast.itt matches 1.. positioned ^ ^ ^0.5 run function entities:mobs/abilities/wither_storm/raycast/loop