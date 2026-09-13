#Устанавливаем максимальное здоровье равное текущему +0,25
$attribute @s minecraft:max_health base set $(Actual)
#Отхиливаем от этого числа
effect give @s minecraft:instant_health 1 0 true

# execute if entity @s[tag=WearingAmuletOfLife] run function dc:get_call {tick:2, command:"attribute @s minecraft:max_health modifier add health_amulet 0.1 add_multiplied_base", requirePos:false, requireEntity:true}
# attribute @s minecraft:max_health modifier remove health_amulet

#Возврат максимального
$function dc:get_call {tick:2, command:"attribute @s minecraft:max_health base set $(Max)", requirePos:false, requireEntity:true}