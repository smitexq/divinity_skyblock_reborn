execute unless entity @s[nbt={SleepTimer:99s}] run return 0

#Записываем время, в которое игрок лег
execute store result score @s TimeToSleep run time query daytime
function dc:get_call {tick:100, command:"function dsb:events/rest_time/check_if_confirm", requirePos:false, requireEntity:true}