advancement revoke @s only food:drink/sakura_tea

#Проверка на дождь, костер (для достижения)
execute if entity @e[type=marker, distance=..7, tag=campfire] if predicate dsb:advancements/cozy run advancement grant @s only dsb:skyblock/diff/cozy

scoreboard players add @s ConsumeSakuraTea 1

scoreboard players set #score TeaScore 0
scoreboard players operation #score TeaScore += @s ConsumeBirchTea
scoreboard players operation #score TeaScore += @s ConsumeBlackTea
scoreboard players operation #score TeaScore += @s ConsumeGreenTea
scoreboard players operation #score TeaScore += @s ConsumeSakuraTea
scoreboard players operation #score TeaScore += @s ConsumeBerriesTea
scoreboard players operation #score TeaScore += @s ConsumeOxeyeDaisyTea


###ищем ср.арф с округление (0,5+)
scoreboard players operation #score TeaScore *= #10 TeaScore
scoreboard players operation #score TeaScore /= #6 TeaScore

scoreboard players operation #temp TeaScore = #score TeaScore
scoreboard players operation #temp TeaScore %= #10 TeaScore

scoreboard players operation #score TeaScore /= #10 TeaScore
execute if score #temp TeaScore matches 5.. run scoreboard players add #score TeaScore 1
###


###ищем количество отклонений других чаев
scoreboard players set #countDeviant TeaScore 0

scoreboard players operation #temp TeaScore = #score TeaScore
scoreboard players operation #temp TeaScore -= @s ConsumeBlackTea
execute unless score #temp TeaScore matches -2..2 run scoreboard players add #countDeviant TeaScore 1

scoreboard players operation #temp TeaScore = #score TeaScore
scoreboard players operation #temp TeaScore -= @s ConsumeGreenTea
execute unless score #temp TeaScore matches -2..2 run scoreboard players add #countDeviant TeaScore 1

scoreboard players operation #temp TeaScore = #score TeaScore
scoreboard players operation #temp TeaScore -= @s ConsumeBirchTea
execute unless score #temp TeaScore matches -2..2 run scoreboard players add #countDeviant TeaScore 1

scoreboard players operation #temp TeaScore = #score TeaScore
scoreboard players operation #temp TeaScore -= @s ConsumeBerriesTea
execute unless score #temp TeaScore matches -2..2 run scoreboard players add #countDeviant TeaScore 1

scoreboard players operation #temp TeaScore = #score TeaScore
scoreboard players operation #temp TeaScore -= @s ConsumeOxeyeDaisyTea
execute unless score #temp TeaScore matches -2..2 run scoreboard players add #countDeviant TeaScore 1
###

###Если их много, то эффект не выдается
execute if score #countDeviant TeaScore matches 4..5 run return 0


###Находим отклонение текущего чая
scoreboard players operation #temp TeaScore = #score TeaScore
scoreboard players operation #temp TeaScore -= @s ConsumeSakuraTea

function food:tea/sakura/clear_effect
tag @s add UseSakuraTea

playsound minecraft:entity.experience_orb.pickup ambient @s

#В зависимости от всех значений нужный эффект
###Слабый
#20% не потратить план постройки; 15% вернуть прочность = 3 минуты
execute if score #temp TeaScore matches ..-3 run return run function food:tea/tellraw {tag:"SakuraTea1", score:"TimeConsumeSakuraTea", level:"I", time:180}

###Нормальный
team join PeacefulEntity @s
team join PeacefulEntity @e[type=#food:to_peaceful,team=,distance=..30]
execute as @e[type=#food:to_peaceful,distance=..30] run data modify entity @s AngerTime set value 0

scoreboard players set @s InitTeam 30
#мирные кроме тех случаев, когда нейтральный моб был разозлен на вас, или вы его разозлили
#мирные мобы на 30 сек на расстоянии 30 блоков; 40% не потратить план постройки; 25% вернуть прочность = 4,5 минуты
execute if score #temp TeaScore matches -2..2 run return run function food:tea/tellraw {tag:"SakuraTea2", score:"TimeConsumeSakuraTea", level:"II", time:270}

###Сильный
advancement grant @s only dsb:skyblock/constructions/zen
scoreboard players set @s InitTeam 60
#мирные мобы на 60 сек на расстоянии 30 блоков; 85% не потратить план постройки; 40% вернуть прочность = 5 минуты
execute if score #temp TeaScore matches 3.. run return run function food:tea/tellraw {tag:"SakuraTea3", score:"TimeConsumeSakuraTea", level:"III", time:300}