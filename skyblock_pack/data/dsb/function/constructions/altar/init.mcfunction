##Базовые значения алтарь
scoreboard players set #init Altar 1
function dsb:constructions/altar/base_score
#

data modify storage dsb:cts Altar.SoulsCount set value 0

#Призыв пъедисталов
execute positioned ~ ~-2.4 ~ run function dsb:constructions/altar/podiums
#
function dsb:constructions/altar/on_pos