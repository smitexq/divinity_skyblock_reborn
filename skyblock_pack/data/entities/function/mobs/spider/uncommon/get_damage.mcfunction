#var3 - процент хп
function entities:mobs/abilities/get_procent_health
# tellraw @a {"score":{"objective":"variables","name":"#hp"},"color":"aqua"}

#паутина
execute store result score #chance variables run random value 0..99
execute if score #chance variables matches 0..14 run return run function entities:mobs/abilities/cobweb/start

#инвиз
execute store result score #chance variables run random value 0..9
execute if score #chance variables matches 0..1 run return run function entities:mobs/abilities/invisible/start

#Если здоровье ниже 50%
execute unless score #hp variables matches ..50 run return 0
execute if entity @s[tag=less_50percent_hp] run return 0

tag @s add less_50percent_hp

function entities:mobs/abilities/jump/start {mob:"cave_spider"}
execute store result score #chance variables run random value 0..1
execute if score #chance variables matches 0 run return 0
function dc:get_call {tick:40, command:"function entities:mobs/abilities/jump/start {mob:'	cave_spider'}", requirePos:false, requireEntity:true}