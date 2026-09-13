scoreboard players set .entity slowcast 0
scoreboard players set .type slowcast 4
scoreboard players set .recursions slowcast 8
scoreboard players set .iterations slowcast 15
#Так как итераций будет 15, то луч будет "лететь" 15 тиков

execute anchored eyes positioned ^ ^-0.4 ^0.7 run function slowcast:start
