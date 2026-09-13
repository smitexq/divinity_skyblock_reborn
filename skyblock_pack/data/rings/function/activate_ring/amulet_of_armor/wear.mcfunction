tag @s add WearingAmuletOfArmor
particle wax_off ~ ~1 ~ 0.3 0.3 0.3 10 6 force
playsound minecraft:entity.experience_orb.pickup ambient @s

attribute @s minecraft:armor modifier add armor_amulet 1 add_value

execute if entity @s[tag=WearingSouthernRitualRing] run advancement grant @s only dsb:skyblock/diff/full_protect