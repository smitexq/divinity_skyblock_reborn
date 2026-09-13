#сли больше нет маркеров
execute unless entity @e[type=marker, tag=SoulOfAbyssHexParticle] run return 0
#Подготовка к выстрелу
execute as @e[type=marker, tag=SoulOfAbyssHexParticle, sort=random, limit=1] at @s facing entity @p eyes run function entities:bosses/soul_of_abyss/abilities/hexagon/prepend

#Следующий маркер
function dc:get_call {tick:20, command:"function entities:bosses/soul_of_abyss/abilities/hexagon/prepend_shot", requirePos:false, requireEntity:true}