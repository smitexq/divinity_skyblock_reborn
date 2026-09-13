scoreboard players add *var1 variables 1
#Если встретился плотный блок, значит кидаем паутину и прекращаем искать место
execute unless block ~ ~ ~ #entities:web_weaver positioned as @s rotated as @s run return run function entities:mobs/abilities/web_weaver/web_raycast/throw_cobweb

#Проверяем 8 блоков впереди
execute if score *var1 variables matches ..16 positioned ^ ^ ^0.5 run function entities:mobs/abilities/web_weaver/loop