item modify entity @s weapon.mainhand food:remove_item
setblock ~ ~ ~ minecraft:cauldron

execute at @s run summon item ~ ~ ~ {Item:{id:"minecraft:lava_bucket",count:1}}

playsound minecraft:item.bucket.fill_lava