#scoreboard players set .entity slowcast 0
scoreboard players set .type slowcast 1
scoreboard players set .recursions slowcast 6
scoreboard players set .iterations slowcast 28
#Так как итераций будет 20, то луч будет "лететь" 20 тиков. На расстояние 70 блоков

#Торнадо будет направлено на игрока
execute facing entity @p feet run function slowcast:start
#execute positioned ~ ~0.1 ~ facing entity @p feet run function slowcast:start
#execute rotated 0 0 run function slowcast:start
