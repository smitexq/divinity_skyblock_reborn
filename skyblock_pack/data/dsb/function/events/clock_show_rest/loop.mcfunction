#если часы уже не ванильные
execute if data storage dsb:temp Clocks.inv[-1].components."minecraft:custom_data".custom run function dsb:events/clock_show_rest/if_modify
#Если больше не осталось
execute unless data storage dsb:temp Clocks.inv[] run return fail

#в каждом слоте, где есть часы изменяем их
execute store result storage dsb:temp Clocks.slot byte 1 run data get storage dsb:temp Clocks.inv[-1].Slot
function dsb:events/clock_show_rest/modify with storage dsb:temp Clocks

#удаляем из хранилища слот, в котором уже изменены часы и переходим к следующему
data remove storage dsb:temp Clocks.inv[-1]
function dsb:events/clock_show_rest/loop