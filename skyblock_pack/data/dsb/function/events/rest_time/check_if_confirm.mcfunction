#Узнаем текущее время
execute store result score *var1 variables run time query daytime
#И время которое должно было наступить
scoreboard players add @s TimeToSleep 100
execute if score @s TimeToSleep matches 24000.. run scoreboard players remove @s TimeToSleep 24000

#Если показатели не равны, значит ночь была скипнут
execute unless score @s TimeToSleep = *var1 variables run scoreboard players remove @s RestTimeAI 600

execute if score @s RestTimeAI matches ..0 run scoreboard players set @s RestTimeAI 0

#Заканчиваем
execute if entity @s[nbt={SleepTimer:0s}] run return 0


function dc:get_call {tick:100, command:"function dsb:events/rest_time/check_if_confirm", requirePos:false, requireEntity:true}