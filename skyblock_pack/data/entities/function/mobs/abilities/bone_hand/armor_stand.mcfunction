#Направление для движения костей
data modify storage dsb:temp BoneHand set value {SignX:"", SignZ:""}
#Случайный Motion
execute store result storage dsb:temp BoneHand.MotionX int 1 run random value 1..2
execute store result storage dsb:temp BoneHand.MotionY int 1 run random value 1..4
execute store result storage dsb:temp BoneHand.MotionZ int 1 run random value 1..2
#Отрицательное направление
execute store result score *var1 variables run random value 0..1
execute if score *var1 variables matches 0 run data modify storage dsb:temp BoneHand.SignX set value "-"
execute store result score *var1 variables run random value 0..1
execute if score *var1 variables matches 0 run data modify storage dsb:temp BoneHand.SignZ set value "-"
#Кость как предмет
function entities:mobs/abilities/bone_hand/bone_item with storage dsb:temp BoneHand



data modify storage dsb:temp BoneHand set value {SignX:"", SignZ:""}
#Случайная позиция руки, в которой будет кость
execute store result storage dsb:temp BoneHand.ArmPoseX int 1 run random value 1..360
execute store result storage dsb:temp BoneHand.ArmPoseY int 1 run random value 1..360
execute store result storage dsb:temp BoneHand.ArmPoseZ int 1 run random value 1..360
#Случайный Motion
execute store result storage dsb:temp BoneHand.MotionX int 1 run random value 1..3
execute store result storage dsb:temp BoneHand.MotionY int 1 run random value 1..4
execute store result storage dsb:temp BoneHand.MotionZ int 1 run random value 1..3

execute store result score *var1 variables run random value 0..1
execute if score *var1 variables matches 0 run data modify storage dsb:temp BoneHand.SignX set value "-"
execute store result score *var1 variables run random value 0..1
execute if score *var1 variables matches 0 run data modify storage dsb:temp BoneHand.SignZ set value "-"
#Кость как предмет в руке стойки (тогда разные положения могут быть)
function entities:mobs/abilities/bone_hand/bone_stand with storage dsb:temp BoneHand

#Призываем по 10 костей двух типов
scoreboard players add @s RecursionDepth 1
execute if score @s RecursionDepth matches ..10 run function entities:mobs/abilities/bone_hand/armor_stand