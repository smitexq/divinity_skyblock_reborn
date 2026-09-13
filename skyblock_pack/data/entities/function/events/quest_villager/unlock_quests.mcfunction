scoreboard players remove @s QuestTime 1
tag @s remove ReloadQuest
tellraw @s {"translate":"dsb.events.quests.unlock_quests","color":"green"}
execute positioned as @s run playsound minecraft:entity.experience_orb.pickup ambient @s