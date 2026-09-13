tag @s add SoulOfAbyssSpore

#
function dc:get_call {tick:20, command:"tag @s add stage2", requirePos:false, requireEntity:true}
function dc:get_call {tick:35, command:"kill @s", requirePos:false, requireEntity:true}
#Фейерверк
function dc:get_call {tick:35, command:"summon firework_rocket ~ ~1.5 ~ {Silent:1b,FireworksItem:{id:'minecraft:firework_rocket',count:1,components:{'minecraft:fireworks':{explosions:[{shape:'large_ball',has_twinkle:true,colors:[I;12722027],fade_colors:[I;10028293]}]}}}}", requirePos:false, requireEntity:true}
