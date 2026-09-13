#отнимаем интеллект
scoreboard players operation @s AI -= *var1 variables

$tellraw @s {"translate":"dsb.events.dependence.no_eat","color":"red","with":["$(count)", {"score":{"objective":"variables","name":"*var1"}}]}