scoreboard players set .entity slowcast 0
scoreboard players set .type slowcast 102
scoreboard players set .recursions slowcast 10
scoreboard players set .iterations slowcast 8

execute as @a[distance=..25] at @s run playsound minecraft:entity.wither.shoot ambient @a ~ ~ ~ 0.15
function slowcast:start