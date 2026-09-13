#Задаем размер, позицию и теги
$data merge entity @s {width:0.15f,height:0.15f, Tags:["$(UUID)","LibraryTask"], Pos:$(Pos)}
#Звуки и частицы
playsound minecraft:event.mob_effect.trial_omen ambient @a ~ ~ ~ 0.5
execute at @s run particle minecraft:ominous_spawning ~ ~ ~ 0.1 0.11 0.1 0 10

#Повторение частиц
function dc:get_call {tick:10, command:"function dsb:constructions/small_library/task/work/particle", requirePos:false, requireEntity:true}
#interaction пропадает через 4 секунды
function dc:get_call {tick:80, command:"kill @s", requirePos:false, requireEntity:true}