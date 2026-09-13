tag @s add WearingAmuletOfLuck
particle wax_off ~ ~1 ~ 0.3 0.3 0.3 10 6 force
playsound minecraft:entity.experience_orb.pickup ambient @s

#Если уже есть эффект удачи, то рассчитываем время, которое будет длиться эффект. (время эффекта в тиках, поэтому /20)
execute if entity @s[tag=UseGreenTea] store result storage dsb:temp time int 1 run data get entity @s active_effects[{id:"minecraft:luck"}].duration 0.05
execute if entity @s[tag=GreenTea2] run function food:tea/green/luck_level/3 with storage dsb:temp
execute if entity @s[tag=GreenTea1] run function food:tea/green/luck_level/2 with storage dsb:temp

function rings:activate_ring/amulet_of_luck/give_effect