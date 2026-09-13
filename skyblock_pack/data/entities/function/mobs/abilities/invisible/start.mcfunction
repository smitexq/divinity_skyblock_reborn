#Инвиз
effect give @s minecraft:invisibility 7

#Через 5 секунд босс телепортируется в радиусе 7-ми блоков от ближайшего игрока
function dc:get_call {tick:100, command:"function entities:mobs/abilities/invisible/spread", requirePos:true, requireEntity:true}