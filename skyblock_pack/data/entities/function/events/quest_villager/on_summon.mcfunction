data merge entity @s {Invulnerable:1b, NoAI:1b, Silent:1b, Offers:{Recipes:[]}, VillagerData:{level:2, profession:"mason", type:"plains"}, CustomName:'{"translate":"dsb.entity.quest_villager","color":"yellow"}', Tags:["QuestVillager"], Brain:{memories:{"minecraft:job_site": {value: {pos: [I; 0, 319, 0], dimension: "minecraft:overworld"}}}}}

#Для того, чтобы у него был интеллект и не было торгов
function dc:get_call {tick:100, command:"function entities:events/quest_villager/loop_set_recipes", requirePos:false, requireEntity:true}