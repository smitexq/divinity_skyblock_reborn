kill @s

particle minecraft:sonic_boom ~ ~0.5 ~
particle minecraft:soul ~ ~1 ~ 0.5 0.5 0.5 0.1 20 force

execute store result score *var1 variables run random value 1..6 dsb:winter_boss_type_mobsummon



execute if score *var1 variables matches 1 run return run summon skeleton ~ ~ ~ {Team:"WinterQueen", Tags:["entity","WinterQueenMob"], HandItems:[{id:"minecraft:bow"}, {}], DeathLootTable:"", ArmorItems:[{},{},{},{id:"iron_helmet", count:1b, components:{unbreakable:{}}}], attributes:[{id:"minecraft:attack_damage",base:10},{id:"minecraft:movement_speed",base:0.27},{id:"minecraft:armor",base:7}]}
execute if score *var1 variables matches 2 run return run summon stray ~ ~ ~ {Team:"WinterQueen", Tags:["entity","WinterQueenMob"], HandItems:[{id:"minecraft:bow"}, {}], DeathLootTable:"", ArmorItems:[{},{},{},{id:"iron_helmet", count:1b, components:{unbreakable:{}}}], attributes:[{id:"minecraft:attack_damage",base:10},{id:"minecraft:movement_speed",base:0.27},{id:"minecraft:armor",base:7}]}
execute if score *var1 variables matches 3 run return run summon stray ~ ~ ~ {Team:"WinterQueen", Tags:["entity","WinterQueenMob"], attributes:[{id:"minecraft:max_health",base:30},{id:"minecraft:attack_damage",base:8},{id:"minecraft:armor",base:2},{id:"minecraft:follow_range",base:60}], Health:30, DeathLootTable:"", ArmorItems:[{},{},{},{id:"iron_helmet", count:1b, components:{unbreakable:{}}}], attributes:[{id:"minecraft:attack_damage",base:10},{id:"minecraft:movement_speed",base:0.27},{id:"minecraft:armor",base:7}]}
execute if score *var1 variables matches 4 run return run summon stray ~ ~ ~ {Team:"WinterQueen", Tags:["entity","WinterQueenMob"], attributes:[{id:"minecraft:max_health",base:30},{id:"minecraft:attack_damage",base:8},{id:"minecraft:armor",base:2},{id:"minecraft:follow_range",base:60}], Health:30, DeathLootTable:"", ArmorItems:[{},{},{},{id:"iron_helmet", count:1b, components:{unbreakable:{}}}], attributes:[{id:"minecraft:attack_damage",base:10},{id:"minecraft:movement_speed",base:0.27},{id:"minecraft:armor",base:7}]}

summon vex ~ ~ ~ {Team:"WinterQueen", Tags:["entity","WinterQueenMob"]}