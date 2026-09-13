place jigsaw entities:soul_of_abyss/healer dsb:soul_of_abyss/healer 1 ~ ~1 ~

#Здоровье спавнера
summon minecraft:text_display ~ ~2.5 ~ {text:'{"text":"150/150","color":"yellow"}',billboard:center,see_through:true,view_range:0.2f,Tags:["SoulOfAbyss_HP"]}

#его хитбокс
summon minecraft:ghast ~ ~1000 ~ {Team:"SoulOfAbyss", Silent:1b, NoAI:1b, attributes:[{id:"minecraft:scale",base:0.5},{id:"minecraft:max_health",base:150}], Health:150f, DeathLootTable:"", active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:999999999,show_particles:0b}], Tags:["SoulOfAbyss_HELER_push","entity","2phase","SoulOfAbyssMob"], PersistenceRequired:1b}
#
execute as @e[type=ghast, tag=SoulOfAbyss_HELER_push, sort=nearest, limit=1] run function dc:get_call {tick:10, command:"tp @s ~ ~-999.25 ~", requirePos:false, requireEntity:true}