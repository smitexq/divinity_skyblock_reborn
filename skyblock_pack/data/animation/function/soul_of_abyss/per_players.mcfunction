stopsound @s

tag @s add camera
gamemode spectator @s
effect give @s minecraft:blindness 3 0 true
tp @s ~ ~1000 ~


#После катсцены телепорт в начало арены
function dc:get_call {tick:470, command:"function animation:soul_of_abyss/on_player_end", requirePos:false, requireEntity:true}