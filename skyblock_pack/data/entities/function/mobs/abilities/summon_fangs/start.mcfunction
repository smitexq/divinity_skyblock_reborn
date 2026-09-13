#Выставляем значения для медленного рейкастинга
scoreboard players set .type slowcast 3
scoreboard players set .recursions slowcast 2
scoreboard players set .iterations slowcast 18
#Так как итераций будет 18, то луч будет "лететь" 18 тиков

#Целимся для ближайшую сущность
execute anchored feet facing entity @p feet positioned ^ ^ ^1.5 run function slowcast:start