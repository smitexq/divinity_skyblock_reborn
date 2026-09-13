$tag @s add $(tag)
$scoreboard players set @s $(score) $(time)

$tellraw @s {"translate":"dsb.events.drink_tea","color":"dark_green","with":["$(level)", "$(time)"]}