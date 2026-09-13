			#===============#
			# made by Smite #
			#===============#
			#
#Удаление предмета из рук
$execute if score *process Altar matches $(score) run data remove entity @e[type=armor_stand,tag=AltarShelf,tag=$(tag),limit=1] HandItems[]

$execute if entity @e[type=armor_stand,tag=AltarShelf,tag=south,tag=$(tag)] run return run function dsb:constructions/altar/work/particle/particle_shelf_south
$execute if entity @e[type=armor_stand,tag=AltarShelf,tag=north,tag=$(tag)] run return run function dsb:constructions/altar/work/particle/particle_shelf_north
$execute if entity @e[type=armor_stand,tag=AltarShelf,tag=east,tag=$(tag)] run return run function dsb:constructions/altar/work/particle/particle_shelf_east
$execute if entity @e[type=armor_stand,tag=AltarShelf,tag=west,tag=$(tag)] run return run function dsb:constructions/altar/work/particle/particle_shelf_west
$execute if entity @e[type=armor_stand,tag=AltarShelf,tag=south-east,tag=$(tag)] run return run function dsb:constructions/altar/work/particle/particle_shelf_south-east
$execute if entity @e[type=armor_stand,tag=AltarShelf,tag=south-west,tag=$(tag)] run return run function dsb:constructions/altar/work/particle/particle_shelf_south-west
$execute if entity @e[type=armor_stand,tag=AltarShelf,tag=north-east,tag=$(tag)] run return run function dsb:constructions/altar/work/particle/particle_shelf_north-east
$execute if entity @e[type=armor_stand,tag=AltarShelf,tag=north-west,tag=$(tag)] run return run function dsb:constructions/altar/work/particle/particle_shelf_north-west