$execute store result score *var1 variables run data get storage dsb:cts Fire.$(uuid).act.bit$(id)

$function dsb:events/fire/on_player/title with storage dsb:cts Fire.$(uuid).text

#и в зависимости от значения выводим какое действие нужно совершить
execute if score *var1 variables matches 0 run return run title @s clear
execute if score *var1 variables matches 1 run return run title @s title {"translate":"dsb.events.create_fire.action.rbc","color":"gold"}
execute if score *var1 variables matches -1 run return run title @s title {"translate":"dsb.events.create_fire.action.lbc","color":"gold"}