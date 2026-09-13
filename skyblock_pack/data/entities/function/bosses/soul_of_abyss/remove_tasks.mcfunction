# вычитаем единицу из кол-ва вызываемых боссов через 1.5 минуты
function dc:get_call {tick:1400, command:"scoreboard players remove *count_bosses gameplay 1", requirePos:false, requireEntity:false}
# через минуту предупреждаем о том, что скоро пройдет эффект
function dc:get_call {tick:1200, command:"function dsb:events/travel_ring/after_boss_fight_msg", requirePos:false, requireEntity:false}
#

kill @e[type=armor_stand, tag=SoulOfAbyssShadow]
kill @e[type=marker, tag=SoulOfAbyssSpore]
kill @e[type=marker, tag=SoulOfAbyssHexParticle]

function entities:bosses/soul_of_abyss/conditions/2phase/remove
kill @e[type=wither_skeleton, tag=SoulOfAbyssArena_witherSkeleton]


tag @a remove SoulOfAbyssSelect

scoreboard players set *summon SoulOfAbyss 0



data remove storage dsb:dc Tasks[{command:"function entities:bosses/soul_of_abyss/conditions/time"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/soul_of_abyss/abilities/1_phase_7_sec"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/soul_of_abyss/abilities/1_phase_5_sec"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/soul_of_abyss/conditions/time"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/soul_of_abyss/conditions/2phase/particle"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/soul_of_abyss/abilities/2phase/spawner/work"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/soul_of_abyss/abilities/2phase/healer/work"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/soul_of_abyss/abilities/2_phase_9_sec"}]
data remove storage dsb:dc Tasks[{command:"execute if entity @s[tag=!StartHexagon] run function entities:bosses/soul_of_abyss/abilities/hexagon/start"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/soul_of_abyss/conditions/2phase/particle"}]
data remove storage dsb:dc Tasks[{command:"summon firework_rocket ~ ~1.5 ~ {Silent:1b,FireworksItem:{id:'minecraft:firework_rocket',count:1,components:{'minecraft:fireworks':{explosions:[{shape:'large_ball',has_twinkle:true,colors:[I;12722027],fade_colors:[I;10028293]}]}}}}"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/soul_of_abyss/abilities/spore_blossom/damage"}]
data remove storage dsb:dc Tasks[{command:"tag @s remove StartSporeBlossom"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/soul_of_abyss/abilities/red_zone/states/particle"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/soul_of_abyss/abilities/red_zone/states/stalking"}]
data remove storage dsb:dc Tasks[{command:"kill @e[type=armor_stand, tag=SoulOfAbyssShadow]"}]
data remove storage dsb:dc Tasks[{command:"tag @s remove StartRedZone"}]
data remove storage dsb:dc Tasks[{command:"tag @e[type=armor_stand, tag=SoulOfAbyssShadow] add damage"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/soul_of_abyss/abilities/red_zone/select_player/init"}]
data remove storage dsb:dc Tasks[{command:"tag @s remove SoulOfAbyss_getDamage"}]
data remove storage dsb:dc Tasks[{command:"tag @e[type=marker, tag=SoulOfAbyssHexParticle] add stage2"}]
data remove storage dsb:dc Tasks[{command:"kill @e[type=marker, tag=SoulOfAbyssHexParticle]"}]
data remove storage dsb:dc Tasks[{command:"function entities:bosses/soul_of_abyss/abilities/hexagon/prepend_shot"}]
data remove storage dsb:dc Tasks[{command:"tag @s remove StartHexagon"}]


#Удаление задач
function dc:gu/generate
data modify storage dsb:dc_remove temp.UUID set from storage gu:main out
data modify storage dsb:dc_remove temp.command set value "tp @s ~ ~-999.25 ~"
function dc:clear_schedule with storage dsb:dc_remove temp

data modify storage dsb:dc_remove temp.command set value "tag @s add stage2"
function dc:clear_schedule with storage dsb:dc_remove temp

data modify storage dsb:dc_remove temp.command set value "kill @s"
function dc:clear_schedule with storage dsb:dc_remove temp