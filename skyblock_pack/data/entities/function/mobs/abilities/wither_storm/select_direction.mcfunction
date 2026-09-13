scoreboard players reset @s use.wither_storm 

#Меняет направление движения торнадо
scoreboard players add @s side.wither_storm 1
execute if score @s side.wither_storm matches 4 run scoreboard players set @s side.wither_storm -4

#Частицы пыли
particle minecraft:ash ~ ~2 ~ 2.5 1 2.5 0 70 force @a
#звук "воздушного потока"
playsound minecraft:entity.sniffer.sniffing ambient @a ~ ~ ~ 2 1.3