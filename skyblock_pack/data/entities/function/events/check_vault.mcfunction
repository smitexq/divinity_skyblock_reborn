execute store result score *var1 variables run data get block ~ ~ ~ server_data.rewarded_players

execute if score @s CountPlayersKillingBoss <= *var1 variables run function dc:get_call {tick:200, command:"setblock ~ ~ ~ air", requirePos:true, requireEntity:false}
execute if score @s CountPlayersKillingBoss <= *var1 variables run kill @s