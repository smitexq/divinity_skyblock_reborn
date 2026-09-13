data modify entity @s Offers set value {Recipes:[]}

function dc:get_call {tick:200, command:"function entities:events/quest_villager/loop_set_recipes", requirePos:false, requireEntity:true}