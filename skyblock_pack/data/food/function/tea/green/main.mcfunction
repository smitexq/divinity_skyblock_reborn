advancement revoke @s only food:drink/green_tea

#Проверка на дождь, костер (для достижения)
execute if entity @e[type=marker, distance=..7, tag=campfire] if predicate dsb:advancements/cozy run advancement grant @s only dsb:skyblock/diff/cozy

scoreboard players add @s ConsumeGreenTea 1

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
scoreboard players operation #temp TeaScore -= @s ConsumeBerriesTea
execute unless score #temp TeaScore matches -2..2 run scoreboard players add #countDeviant TeaScore 1

scoreboard players operation #temp TeaScore = #score TeaScore
scoreboard players operation #temp TeaScore -= @s ConsumeBlackTea
execute unless score #temp TeaScore matches -2..2 run scoreboard players add #countDeviant TeaScore 1

scoreboard players operation #temp TeaScore = #score TeaScore
scoreboard players operation #temp TeaScore -= @s ConsumeSakuraTea
execute unless score #temp TeaScore matches -2..2 run scoreboard players add #countDeviant TeaScore 1

scoreboard players operation #temp TeaScore = #score TeaScore
scoreboard players operation #temp TeaScore -= @s ConsumeBirchTea
execute unless score #temp TeaScore matches -2..2 run scoreboard players add #countDeviant TeaScore 1

scoreboard players operation #temp TeaScore = #score TeaScore
scoreboard players operation #temp TeaScore -= @s ConsumeOxeyeDaisyTea
execute unless score #temp TeaScore matches -2..2 run scoreboard players add #countDeviant TeaScore 1
###

###Если их много, то эффект не выдается
execute if score #countDeviant TeaScore matches 4..5 run return 0


###Находим отклонение текущего чая
scoreboard players operation #temp TeaScore = #score TeaScore
scoreboard players operation #temp TeaScore -= @s ConsumeGreenTea

function food:tea/green/clear_effect
tag @s add UseGreenTea
tag @s add BlockLuckAmuletActive

playsound minecraft:entity.experience_orb.pickup ambient @s

#В зависимости от всех значений нужный эффект
#Слабый
#шанс 45% на 1 предмет с руды больше; увеличенный шанс выпадения "хорошего лута" из сита; = 4 минуты
execute if score #temp TeaScore matches ..-3 if entity @s[tag=!WearingAmuletOfLuck] run function food:tea/green/luck_level/1 {time:240}
execute if score #temp TeaScore matches ..-3 if entity @s[tag=WearingAmuletOfLuck] run return run function food:tea/green/luck_level/2 {time:360}

#Нормальный
#шанс 70% на 1 предмет с руды больше; шанс 50% на бонусный рол из сита; = 6 минуты
execute if score #temp TeaScore matches -2..2 if entity @s[tag=!WearingAmuletOfLuck] run function food:tea/green/luck_level/2 {time:360}
execute if score #temp TeaScore matches -2..2 if entity @s[tag=WearingAmuletOfLuck] run return run function food:tea/green/luck_level/3 {time:540}

#Сильный
advancement grant @s only dsb:skyblock/constructions/zen
#шанс 90% на 1 предмет с руды больше; 1 бонусный рол + шанс 70% на еще один бонусный рол из сита; = 9 минут
execute if score #temp TeaScore matches 3.. run function food:tea/green/luck_level/3 {time:540}