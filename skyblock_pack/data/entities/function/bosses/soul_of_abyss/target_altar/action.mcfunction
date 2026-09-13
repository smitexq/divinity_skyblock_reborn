advancement revoke @s only entities:events/target/soul_of_abyss_altar

#Если уже призвали босса, то ничего не делаем
execute if score *summon SoulOfAbyss matches 1 run return fail

#Проверяем что есть призывалка в руке
execute if items entity @s weapon.mainhand minecraft:structure_block[minecraft:custom_data~{id:"SoulOfAbyssKey"}] run return run function entities:bosses/soul_of_abyss/target_altar/prepare_to_summon

#Сообщение о необходимости призывалки
tellraw @s {"translate":"dsb.events.bosses.soul_of_abyss.need_summoning","color":"red"}
advancement grant @s only dsb:notes/void_key