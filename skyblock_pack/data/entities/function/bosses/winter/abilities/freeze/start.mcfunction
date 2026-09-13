#Устанавливаем номер способности
scoreboard players set #numberLastAbility WinterQueen 1

execute as @a[distance=..30, sort=random, limit=3] at @s run function entities:bosses/winter/abilities/freeze/on_player

#Пока действует заморозка, то другие способности не применяются
data remove storage dsb:dc Tasks[{command:"function entities:bosses/winter/conditions/phase/select_ability"}]
function dc:get_call {tick:280, command:"function entities:bosses/winter/conditions/phase/select_ability", requirePos:false, requireEntity:true}