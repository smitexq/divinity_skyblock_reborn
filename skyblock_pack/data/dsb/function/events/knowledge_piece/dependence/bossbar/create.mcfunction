#записываем в хранилище игрока кол-во фрагментов, которое ему нужно съесть
$data modify storage dsb:bossbar depFromKP.$(out) set from storage dsb:temp count

#название
$bossbar add dsb:dep_$(out) {"translate":"dsb.events.dependence_from_kp.bossbar", "with":["0", {"storage":"dsb:temp", "nbt":"count"}]}

#Настройки
$bossbar set dsb:dep_$(out) max 900
$bossbar set dsb:dep_$(out) value 900
$bossbar set dsb:dep_$(out) players @s
$bossbar set dsb:dep_$(out) visible true
$bossbar set dsb:dep_$(out) color yellow