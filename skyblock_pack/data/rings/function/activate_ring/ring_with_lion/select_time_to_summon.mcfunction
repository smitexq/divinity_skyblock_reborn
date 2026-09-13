#Если игрок снял кольцо - проверка спадает
execute if entity @s[tag=!WearingRingWithLion] run return 0 

#Если ночь закончилась, то будем проверять, не наступила ли опять
execute store result score *var1 variables run time query daytime
execute unless score *var1 variables matches 13100..23000 run return run function dc:get_call {tick:600, command:"function rings:activate_ring/ring_with_lion/check_if_night", requirePos:false, requireEntity:true}

#Каждые 15-30 секунд относительно условно 3-6 вражденбных мобов с шансом заспавнится еще мобы (если удовлетворяет условиям освещения и спавна)

#Выбираем время в секундах, через сколько появится мобы
execute store result storage dsb:temp Time.ToSummon int 1 run random value 300..600

#И время, через которое кольцо сработает следующий раз
execute store result storage dsb:temp Time.ToNextSummon int 1 run 240..700
#Выполянем функцию отложенного запуска (через выбранное время)
function rings:activate_ring/ring_with_lion/summon/delay_summon with storage dsb:temp Time

#Удаляем временные данные в хранилище
data remove storage dsb:temp Time