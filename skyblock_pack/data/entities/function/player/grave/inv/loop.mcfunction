#Определяет номер слота для макроса
execute store result storage dsb:grave db.TargetSlot int 1 run scoreboard players add *var1 variables 1
execute store result storage dsb:grave db.NewSlot int 1 run scoreboard players add *var2 variables 1
#Две переменные нужны, чтобы убрать дублирование кода, вторая переменная будет отличать от первой, когда дойдем до слотов игрока с номером больше 27 (в шалкере это будут первые слоты)

function entities:player/grave/inv/macros with storage dsb:grave db

#Количество слотов соответствует шалкеру
$execute if score *var2 variables matches ..$(limit) run function entities:player/grave/inv/loop {limit:$(limit)}