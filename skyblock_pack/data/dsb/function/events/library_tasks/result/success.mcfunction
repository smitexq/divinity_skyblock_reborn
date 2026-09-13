scoreboard players reset @s TaskAnswer
#эффекты
playsound minecraft:entity.villager.yes ambient @s
tellraw @s {"translate":"dsb.events.add_ai","color":"green"}

###выдача инты
execute store result score #n AI run random value 3..4 dsb:library/task/success/get_ai
scoreboard players operation @s AI += #n AI

#достижение кто хочет стать...
advancement grant @s only dsb:skyblock/ai/billion

#Усталость
scoreboard players add @s RestTimeAI 100