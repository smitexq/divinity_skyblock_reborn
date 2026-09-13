#метки
tag @s add bow
tag @s remove nothing

#
execute as @a[distance=..30] at @s run playsound minecraft:entity.warden.attack_impact ambient @s

particle minecraft:trial_omen ~ ~1 ~ 0.8 0.8 0.8 1 15 force
#Лук на силу 8 и откидывание 2
item replace entity @s weapon.mainhand with bow[minecraft:enchantments={"power":19, "punch":1}]