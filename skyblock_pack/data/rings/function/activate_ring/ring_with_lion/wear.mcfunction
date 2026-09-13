tag @s add WearingRingWithLion
particle nautilus ~ ~2 ~ 0.1 0.2 0.1 0.7 6 force
playsound minecraft:entity.elder_guardian.death ambient @s ~ ~ ~ 0.6 1.5

say wear
#Вообще убрать проверку на ночь, и добавить спавн мобов в других измерениях

#Проверяем, если сейчас ночь (время для спавна мобов), то сразу выбираем время через которое заспавнится моб
execute store result score *var1 variables run time query daytime
execute if score *var1 variables matches 13100..23000 run return run function rings:activate_ring/ring_with_lion/select_time_to_summon
#Иначе каждые 30 секунд будем проверять, не наступила ли ночь
function dc:get_call {tick:600, command:"function rings:activate_ring/ring_with_lion/check_if_night", requirePos:false, requireEntity:true}