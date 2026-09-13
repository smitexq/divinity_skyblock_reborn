scoreboard players reset @s TaskAnswer
$tellraw @s {"translate":"dsb.events.decision_task.fail.$(cause)","color":"red"}
playsound minecraft:entity.villager.no ambient @s

scoreboard players add @s RestTimeAI 30