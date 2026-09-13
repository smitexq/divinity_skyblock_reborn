#Частицы зелья (помечают куда будет выстрел)
scoreboard players set @s RecursionDepth 0
function entities:bosses/soul_of_abyss/abilities/hexagon/prepend_loop

#Звук+частицы
execute as @a[distance=..30] at @s run playsound minecraft:block.beacon.activate ambient @s ~ ~ ~ 2 2
particle minecraft:gust_emitter_small ~ ~ ~ 0 0 0 0 1 force

#На 40 блоков
scoreboard players set .entity slowcast 0
scoreboard players set .type slowcast 201
scoreboard players set .recursions slowcast 12
scoreboard players set .iterations slowcast 7
#

function slowcast:start