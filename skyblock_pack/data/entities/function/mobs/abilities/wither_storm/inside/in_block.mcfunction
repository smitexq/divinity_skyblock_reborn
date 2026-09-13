#+листва
execute if block ~ ~ ~ #minecraft:leaves run return run function entities:mobs/abilities/wither_storm/inside/random_cobweb

#Трава, цветы, саженцы
execute if block ~ ~ ~ #entities:wither_storm/to.dead_bush run return run function entities:mobs/abilities/wither_storm/inside/random.dead_bush

#культуры, огонь, тростник, бамбук, дриплиф
execute if predicate entities:replace_to_air run return run setblock ~ ~ ~ air destroy

#Выпадение сладких ягод
execute if predicate entities:berries run return run setblock ~ ~ ~ minecraft:sweet_berry_bush[age=1] destroy

#Тушение костров
execute if block ~ ~ ~ #minecraft:campfires[lit=true] run return run function entities:mobs/abilities/wither_storm/inside/campfires

#коралы
execute if block ~ ~ ~ minecraft:brain_coral_fan run return run setblock ~ ~ ~ minecraft:dead_brain_coral_fan
execute if block ~ ~ ~ minecraft:horn_coral_fan run return run setblock ~ ~ ~ minecraft:dead_horn_coral_fan
execute if block ~ ~ ~ minecraft:fire_coral_fan run return run setblock ~ ~ ~ minecraft:dead_fire_coral_fan
execute if block ~ ~ ~ minecraft:bubble_coral_fan run return run setblock ~ ~ ~ minecraft:dead_bubble_coral_fan
execute if block ~ ~ ~ minecraft:tube_coral_fan run return run setblock ~ ~ ~ minecraft:dead_tube_coral_fan

execute if block ~ ~ ~ minecraft:brain_coral run return run setblock ~ ~ ~ minecraft:dead_brain_coral
execute if block ~ ~ ~ minecraft:horn_coral run return run setblock ~ ~ ~ minecraft:dead_horn_coral
execute if block ~ ~ ~ minecraft:fire_coral run return run setblock ~ ~ ~ minecraft:dead_fire_coral
execute if block ~ ~ ~ minecraft:bubble_coral run return run setblock ~ ~ ~ minecraft:dead_bubble_coral
execute if block ~ ~ ~ minecraft:tube_coral run return run setblock ~ ~ ~ minecraft:dead_tube_coral