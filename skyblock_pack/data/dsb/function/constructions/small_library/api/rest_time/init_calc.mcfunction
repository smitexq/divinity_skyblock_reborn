#{time, source_uuid}

$scoreboard players operation *var1 variables = $(source_uuid) library.tome_of_wisdom
$scoreboard players set *var2 variables $(time)

#Удобнее работать с маленькими числами (так как есть проценты, а дробных чисел нет)
scoreboard players operation *var2 variables *= #100 variables


function dsb:constructions/small_library/api/rest_time/loop
#возврат числа
return run scoreboard players get *var2 variables