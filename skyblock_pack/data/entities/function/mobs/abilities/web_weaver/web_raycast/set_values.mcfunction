playsound minecraft:entity.shulker_bullet.hit ambient @a ~ ~ ~ 1 1.5

#scoreboard players set .entity slowcast 0
scoreboard players set .type slowcast 2
scoreboard players set .recursions slowcast 3
scoreboard players set .iterations slowcast 10
#Так как итераций будет 16, то луч будет "лететь" 10 тиков

execute positioned ^ ^ ^ run function slowcast:start
