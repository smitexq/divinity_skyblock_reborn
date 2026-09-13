#Через 2,5 секунды убираем её
function dc:get_call {tick:50, command:"kill @s", requirePos:false, requireEntity:true}
#Заблокированы все слоты
# data merge entity @s {Invisible:1b,Small:1b,NoGravity:1b,Invulnerable:1b,DisabledSlots:4144959}