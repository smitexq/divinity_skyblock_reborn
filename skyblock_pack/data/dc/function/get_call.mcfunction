# require: true/false
#Записываем все данные для выполнения команды
$data modify storage dsb:dc init set value {time:$(tick), command:"$(command)", requirePos:$(requirePos), requireEntity:$(requireEntity)}

#Обработка запроса
function dc:processing

#Отложенный запуск
$schedule function dc:delay/start $(tick)t append