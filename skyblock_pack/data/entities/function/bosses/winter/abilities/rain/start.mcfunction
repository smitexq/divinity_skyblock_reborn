#Устанавливаем номер способности
scoreboard players set #numberLastAbility WinterQueen 4


scoreboard players reset @e WinterQueenRain
execute store result score @s WinterQueenRain run random value 10..15

function entities:bosses/winter/abilities/rain/summon

#Пока идет дождь, то другие способности не применяются
data remove storage dsb:dc Tasks[{command:"function entities:bosses/winter/conditions/phase/select_ability"}]
function dc:get_call {tick:550, command:"function entities:bosses/winter/conditions/phase/select_ability", requirePos:false, requireEntity:true}