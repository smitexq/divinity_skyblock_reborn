#Берем старый номер слота
$data modify storage dsb:grave db.OldSlot set from storage dsb:grave db.Numbers[$(Index)]

function entities:player/grave/inv/replace_macros with storage dsb:grave db
#Добавляем к индексу
execute store result storage dsb:grave db.Index int 1 run scoreboard players add *var1 variables 1

$execute if score *var1 variables matches ..$(limit) run function entities:player/grave/inv/replace_numbers with storage dsb:grave db