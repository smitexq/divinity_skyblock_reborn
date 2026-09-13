advancement revoke @s only entities:events/target/sea_king_altar

#Если уже призвали босса, то ничего не делаем
execute if score *summon SeaKing matches 1 run return fail

###Проверка времени суток
execute store result score *var1 variables run time query daytime
execute unless score *var1 variables matches 13000..23000 run return run title @s actionbar {"translate":"dsb.events.bosses.only_night","color":"red"}


#Проверяем что есть призывалка в руке
execute if items entity @s weapon.mainhand minecraft:structure_block[minecraft:custom_data~{id:"SeaKingSummoner"}] run return run function entities:bosses/sea_king/target_altar/prepare_to_summon

#Сообщение о необходимости призывалки
tellraw @s {"translate":"dsb.events.bosses.need_summoning","color":"red", "with":[{"translate":"dsb.items.sea_king_summoner"}]}