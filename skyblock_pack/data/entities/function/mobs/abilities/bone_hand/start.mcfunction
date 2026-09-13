#Призываем 10 разбросанных костей и 10 стоек для брони с костями
scoreboard players set @s RecursionDepth 1
function entities:mobs/abilities/bone_hand/armor_stand
scoreboard players reset @s RecursionDepth

#Через 1,5 и 3 секунды удаляем эти визуальные кости
function dc:get_call {tick:40, command:"kill @e[type=minecraft:armor_stand,tag=BonesAnimation,limit=10]", requirePos:false, requireEntity:false}
execute as @e[type=item,tag=BonesAnimation,distance=..1] at @s run function dc:get_call {tick:65, command:"kill @s", requirePos:false, requireEntity:true}

#Звуки, частицы
playsound minecraft:entity.skeleton.hurt ambient @s
playsound minecraft:entity.skeleton.converted_to_stray ambient @s ~ ~ ~ 2 0.75
playsound minecraft:entity.warden.heartbeat ambient @s ~ ~ ~
particle minecraft:damage_indicator ~ ~ ~ 0.4 0.5 0.4 0 7 force
effect give @s minecraft:darkness 2

#Урон и урезания брони до половины
damage @s 7 minecraft:magic
tellraw @s {"translate":"dsb.events.mob_abilities.bone_hand","color":"red"}

attribute @s minecraft:armor modifier add armor -0.5 add_multiplied_total
#Через 1 минуту броня вернется
function dc:get_call {tick:1200, command:"attribute @s minecraft:armor modifier remove armor", requirePos:false, requireEntity:true}
tag @s add BoneHand
function dc:get_call {tick:1200, command:"tag @s remove BoneHand", requirePos:false, requireEntity:true}

#Очищаем хранилище
data remove storage dsb:temp BoneHand