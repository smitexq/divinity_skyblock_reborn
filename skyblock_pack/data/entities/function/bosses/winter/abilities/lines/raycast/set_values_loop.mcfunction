scoreboard players set .entity slowcast 0
scoreboard players set .type slowcast 301
scoreboard players set .recursions slowcast 8
scoreboard players set .iterations slowcast 14
#Так как итераций будет 15, то луч будет "лететь" 15 тиков

execute anchored eyes positioned ^ ^ ^ run function slowcast:start
