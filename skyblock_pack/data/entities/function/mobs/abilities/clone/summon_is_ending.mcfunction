#Призыв мобов
$execute summon minecraft:$(mob) run function entities:mobs/abilities/clone/on_mob {out:$(out)}

#Удаляем метки
kill @s