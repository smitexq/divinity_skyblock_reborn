tag @s add WearingAmuletOfLife
particle wax_off ~ ~1 ~ 0.3 0.3 0.3 10 6 force
playsound minecraft:entity.experience_orb.pickup ambient @s

#Прибавляем к текущему хп
attribute @s minecraft:max_health modifier add health_amulet 0.1 add_multiplied_base