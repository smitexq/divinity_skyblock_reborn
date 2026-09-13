advancement revoke @s only food:drink/oxeye_daisy_tea

#Проверка на дождь, костер (для достижения)
execute if entity @e[type=marker, distance=..7, tag=campfire] if predicate dsb:advancements/cozy run advancement grant @s only dsb:skyblock/diff/cozy

scoreboard players add @s ConsumeOxeyeDaisyTea 1

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
scoreboard players operation #temp TeaScore -= @s ConsumeSakuraTea
execute unless score #temp TeaScore matches -2..2 run scoreboard players add #countDeviant TeaScore 1

scoreboard players operation #temp TeaScore = #score TeaScore
scoreboard players operation #temp TeaScore -= @s ConsumeBerriesTea
execute unless score #temp TeaScore matches -2..2 run scoreboard players add #countDeviant TeaScore 1

scoreboard players operation #temp TeaScore = #score TeaScore
scoreboard players operation #temp TeaScore -= @s ConsumeBirchTea
execute unless score #temp TeaScore matches -2..2 run scoreboard players add #countDeviant TeaScore 1
###

###Если их много, то эффект не выдается
execute if score #countDeviant TeaScore matches 4..5 run return 0


###Находим отклонение текущего чая
scoreboard players operation #temp TeaScore = #score TeaScore
scoreboard players operation #temp TeaScore -= @s ConsumeOxeyeDaisyTea

playsound minecraft:entity.experience_orb.pickup ambient @s

#В зависимости от всех значений нужный эффект
#Снимает дебафы
function food:clear_negative_effects
#Слабый
#реген 1 на 1 минуту
execute if score #temp TeaScore matches ..-3 run return run return run effect give @s minecraft:regeneration 60 0

#Нормальный
#реген 1 на 3 минуту, 30% шанс силы 1 на 30 секунд
execute if score #temp TeaScore matches -2..2 run return run function food:tea/oxeye_daisy/2level

#Сильный
advancement grant @s only dsb:skyblock/constructions/zen
#реген 2 на 1,5 минуты, 50% шанс силы 1 на 40 секунд
execute if score #temp TeaScore matches 3.. run return run function food:tea/oxeye_daisy/3level