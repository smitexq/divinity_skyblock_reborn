#Записываем все данные для выполнения команды
data modify storage dsb:dc init set from storage dsb:dc temp

#Выполнение через время
execute store result score *var2 variables run time query gametime
scoreboard players set *var3 variables 200
execute store result storage dsb:dc init.time int 1 run scoreboard players operation *var2 variables += *var3 variables

#После обработки запроса добавляем задачу в список
data modify storage dsb:dc Tasks append from storage dsb:dc init

#Отложенный запуск
schedule function dc:delay/start 10s append