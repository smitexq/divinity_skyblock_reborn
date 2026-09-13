#Если игрок снял кольцо - проверка спадает
execute if entity @s[tag=!WearingRingWithLion] run return 0 

#Если еще не ночь, через 30 секунд еще одна проверка
execute store result score *var1 variables run time query daytime
execute unless score *var1 variables matches 13100..23000 run return run function dc:get_call {tick:600, command:"function rings:activate_ring/ring_with_lion/check_if_night", requirePos:false, requireEntity:true}

#Иначе выбираем время для спавна мобов
function rings:activate_ring/ring_with_lion/select_time_to_summon