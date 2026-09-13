data modify storage dsb:temp Clocks set value {}
data modify storage dsb:temp Clocks.inv append from entity @s Inventory[{id:"minecraft:clock"}]
#Модифицируем все часы в инвентаре
function dsb:events/clock_show_rest/loop

#только потом забираем достижение, чтобы не было цикла
advancement revoke @s only dsb:events/get_clock