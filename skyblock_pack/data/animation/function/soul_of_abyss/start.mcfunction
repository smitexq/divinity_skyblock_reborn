#метка того что налась анимация
scoreboard players set *showAnimation SoulOfAbyss 1
#срабатывает tick функция
scoreboard players set *tickAnimation SoulOfAbyss 1

#располагаем манекены игроков
execute positioned ~-100 ~-50 ~-100 as @a[dx=200, dy=200, dz=200] at @s run function animation:soul_of_abyss/per_players


###Перемещение игроков
function animation:soul_of_abyss/frames/1
function dc:get_call {tick:110, command:"function animation:soul_of_abyss/frames/2", requirePos:true, requireEntity:false}
function dc:get_call {tick:180, command:"function animation:soul_of_abyss/frames/3", requirePos:true, requireEntity:false}
function dc:get_call {tick:280, command:"function animation:soul_of_abyss/frames/4", requirePos:true, requireEntity:false}
function dc:get_call {tick:430, command:"function animation:soul_of_abyss/frames/5", requirePos:true, requireEntity:false}
###


###звуки, частицы
#вылет из спавнера
execute as @e[type=minecraft:interaction, tag=AltarToSpawn_SoulOfAbyss] run function dc:get_call {tick:60, command:"particle minecraft:large_smoke ~ ~ ~ 0.7 0.7 0.7 0.1 40 force", requirePos:false, requireEntity:true}
execute as @e[type=minecraft:interaction, tag=AltarToSpawn_SoulOfAbyss] run function dc:get_call {tick:60, command:"particle minecraft:sculk_soul ~ ~2 ~ 0.5 1.2 0.5 0.05 20 force", requirePos:false, requireEntity:true}
execute as @e[type=minecraft:interaction, tag=AltarToSpawn_SoulOfAbyss] run function dc:get_call {tick:60, command:"particle minecraft:squid_ink ~ ~2 ~ 0.5 1.2 0.5 0 10 force", requirePos:false, requireEntity:true}
execute as @e[type=minecraft:interaction, tag=AltarToSpawn_SoulOfAbyss] run function dc:get_call {tick:60, command:"playsound minecraft:block.sculk_shrieker.shriek ambient @a ~ ~ ~ 3 0.5", requirePos:false, requireEntity:true}

execute as @e[type=minecraft:marker, tag=SoulOfAbyssArenaMiddle] run function dc:get_call {tick:205, command:"playsound minecraft:block.sculk_shrieker.shriek ambient @a ~ ~ ~ 3 1.6", requirePos:false, requireEntity:true}

#после смерти пиглина
execute as @e[type=minecraft:marker, tag=SoulOfAbyssArenaMiddle] run function dc:get_call {tick:205, command:"playsound minecraft:block.sculk_shrieker.shriek ambient @a ~ ~ ~ 3 0.8", requirePos:false, requireEntity:true}

#При сборе в единую душу
function dc:get_call {tick:430, command:"tag @e[type=armor_stand, tag=SOA_smoke] add path", requirePos:true, requireEntity:false}

###


###призыв пиглина
function dc:get_call {tick:230, command:"execute as @e[type=marker, tag=SummonPiglin] at @s run summon minecraft:piglin_brute ~ ~ ~ {DeathLootTable:'', NoAI:1b, Tags:['SoulOfAbyssAnimation','SoulOfAbyssMob'], HandDropChances:[0f,0f], HandItems:[{id:'netherite_axe',count:1,components:{'minecraft:enchantment_glint_override':1b}}, {id:'echo_shard', count:1}]}", requirePos:true, requireEntity:false}

function dc:get_call {tick:280, command:"execute as @e[type=piglin_brute, tag=SoulOfAbyssAnimation] at @s run function animation:soul_of_abyss/on_piglin", requirePos:false, requireEntity:true}
###


function dc:get_call {tick:500, command:"scoreboard players set *tickAnimation SoulOfAbyss 0", requirePos:true, requireEntity:false}
function dc:get_call {tick:500, command:"kill @e[tag=SOA_ANIMATION]", requirePos:true, requireEntity:false}
function dc:get_call {tick:500, command:"tag @a remove camera", requirePos:false, requireEntity:false}
function dc:get_call {tick:500, command:"tag @e remove ActualCamera", requirePos:false, requireEntity:false}
function dc:get_call {tick:500, command:"tag @e remove initMotion", requirePos:false, requireEntity:false}
function dc:get_call {tick:500, command:"execute as @e[type=marker, tag=SoulOfAbyssArenaMiddle] at @s run function animation:soul_of_abyss/prepend_summon_animation", requirePos:true, requireEntity:false}
