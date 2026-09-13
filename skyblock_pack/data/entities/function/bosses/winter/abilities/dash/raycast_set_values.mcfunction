scoreboard players set .entity slowcast 0
scoreboard players set .type slowcast 302
scoreboard players set .recursions slowcast 8
scoreboard players set .iterations slowcast 12
#Так как итераций будет 15, то луч будет "лететь" 15 тиков

execute facing entity @a[tag=WinterQueenTarget] eyes rotated ~ 0 positioned ^ ^ ^ run function slowcast:start