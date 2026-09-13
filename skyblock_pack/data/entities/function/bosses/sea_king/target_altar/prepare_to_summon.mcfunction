#-1 призывалка
item modify entity @s weapon.mainhand food:remove_item

scoreboard players set *summon SeaKing 1
#анимация
execute as @e[type=minecraft:marker, tag=DrownedArenaMiddle] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["SeaKing_SpawnAnimation"], Invisible:1b}
execute as @e[type=minecraft:armor_stand, tag=SeaKing_SpawnAnimation] run function dc:get_call {tick:100, command:"kill @s", requirePos:false, requireEntity:true}

execute as @a at @s run playsound minecraft:entity.evoker.prepare_attack ambient @s

#
execute as @a at @s run function dc:get_call {tick:100, command:"playsound minecraft:block.end_portal.spawn", requirePos:false, requireEntity:true}
execute as @e[type=minecraft:marker, tag=DrownedArenaMiddle] at @s run function dc:get_call {tick:100, command:"particle minecraft:glow_squid_ink ~ ~1 ~ 2 2 2 0.2 50 force", requirePos:false, requireEntity:true}
execute as @e[type=minecraft:marker, tag=DrownedArenaMiddle] at @s run function dc:get_call {tick:100, command:"function entities:bosses/sea_king/summon", requirePos:false, requireEntity:true}