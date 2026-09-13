#призываем частицу относително меток
particle minecraft:sonic_boom ~ ~0.6 ~

#звук призыва
playsound minecraft:entity.allay.ambient_without_item ambient @a ~ ~1 ~ 1

#через 12 тиков призываем мобов
$function dc:get_call {tick:12, command:"function entities:mobs/abilities/clone/summon_is_ending {mob:$(mob), out:$(out)}", requirePos:false, requireEntity:true}