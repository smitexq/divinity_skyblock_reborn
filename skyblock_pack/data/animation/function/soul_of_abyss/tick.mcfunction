#первый кадр
execute as @e[type=armor_stand, tag=SOA_Camera1, tag=!cancel] at @s run tp ^-0.05 ^ ^

#Третий кадр
execute as @e[type=armor_stand, tag=SOA_Camera3, tag=initMotion] at @s facing entity @e[type=marker, tag=SOA_Camera3_end, limit=1] feet run tp @s ^ ^ ^0.1

###Пиглин
execute as @e[type=minecraft:piglin_brute, tag=SoulOfAbyssAnimation] at @s facing entity @e[type=marker, tag=SoulOfAbyssArenaMiddle, limit=1] eyes rotated ~ 0 run tp @s ^ ^ ^0.08 ~ ~
execute as @e[type=minecraft:piglin_brute, tag=SoulOfAbyssAnimation, tag=path] at @s anchored eyes positioned ^ ^ ^-1 run particle minecraft:squid_ink ~ ~0.2 ~ 0.1 0.1 0.1 0 3 force
###


#Четвертый кадр
execute as @e[type=armor_stand, tag=SOA_Camera4, tag=initMotion] at @s facing entity @e[type=marker, tag=SoulOfAbyssArenaMiddle, limit=1] feet rotated ~ 0 run tp @s ^ ^ ^0.03

#Пятый кадр
execute as @e[type=armor_stand, tag=SOA_Camera5, tag=initMotion] at @s facing entity @e[type=marker, tag=SOA_Camera5_end, limit=1] feet run tp @s ^ ^ ^0.06
#Сбор душ в одном месте
execute as @e[type=armor_stand, tag=SOA_smoke, tag=path] at @s facing entity @e[type=marker, tag=SoulOfAbyssArenaMiddle, limit=1] eyes run tp @s ^ ^ ^0.1 ~ ~
execute as @e[type=armor_stand, tag=SOA_smoke, tag=path] at @s run particle minecraft:squid_ink ~ ~ ~ 0.2 0.2 0.2 0 4 force
execute as @e[type=armor_stand, tag=SOA_smoke, tag=path] at @s run particle minecraft:trial_omen ~ ~ ~ 0.3 0.3 0.3 0 1 force