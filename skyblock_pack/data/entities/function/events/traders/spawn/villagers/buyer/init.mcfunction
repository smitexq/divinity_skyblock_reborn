#Профессия
data merge entity @s {Tags:["Trader"], CustomName:'{"translate":"dsb.entity.traders.buyer"}', Brain:{memories:{"minecraft:job_site": {value: {pos: [I; 18218425, 0, 0], dimension: "minecraft:overworld"}}}}, VillagerData:{level:2, profession:"minecraft:shepherd", type:"minecraft:desert"}, Offers:{Recipes:[]}}

setblock 17112022 0 0 light_blue_shulker_box

#Товар
function entities:events/traders/spawn/villagers/buyer/new_good
function entities:events/traders/spawn/villagers/buyer/new_good
function entities:events/traders/spawn/villagers/buyer/new_good
function entities:events/traders/spawn/villagers/buyer/new_good
function entities:events/traders/spawn/villagers/buyer/new_good
execute store result score *var1 variables run random value 0..1 dsb:entities/traders/buyer/additional_good
execute if score *var1 variables matches 0 run function entities:events/traders/spawn/villagers/buyer/new_good
execute store result score *var1 variables run random value 0..99 dsb:entities/traders/buyer/additional_good
execute if score *var1 variables matches 0..24 run function entities:events/traders/spawn/villagers/buyer/new_good

setblock 17112022 0 0 air