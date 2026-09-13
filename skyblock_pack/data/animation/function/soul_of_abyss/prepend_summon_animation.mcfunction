#Для частиц
summon marker ~ ~5 ~ {Tags:["PrependSummonSoulOfAbyss"]}
execute as @e[type=marker, tag=PrependSummonSoulOfAbyss] at @s run function dc:get_call {tick:70, command:"kill @s", requirePos:false, requireEntity:true}

function dc:get_call {tick:60, command:"function entities:bosses/soul_of_abyss/summon", requirePos:false, requireEntity:true}
