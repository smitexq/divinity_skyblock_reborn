#На каждого ближайшего игрока нацеливаемся
execute positioned ~ ~1 ~ facing entity @p[distance=..30, tag=WinterBossKnockTarget] eyes rotated ~ 0 run function entities:bosses/winter/abilities/knockback/on_player
tag @p[distance=..30, tag=WinterBossKnockTarget] remove WinterBossKnockTarget

#Если еще остались игроки
execute if entity @p[tag=WinterBossKnockTarget] run function entities:bosses/winter/abilities/knockback/loop_select