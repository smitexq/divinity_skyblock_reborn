team join ShadowClone @s

tag @s add entity
$tag @s add unicCloneId-$(out)

###Копируем моба
data modify entity @s Invulnerable set value 1
data modify entity @s Silent set value 1
data modify entity @s CustomNameVisible set value 1
$data modify entity @s CustomName set from entity $(out) CustomName

$item replace entity @s weapon.mainhand from entity $(out) weapon.mainhand
$item replace entity @s weapon.offhand from entity $(out) weapon.offhand
$item replace entity @s armor.head from entity $(out) armor.head
$item replace entity @s armor.chest from entity $(out) armor.chest
$item replace entity @s armor.legs from entity $(out) armor.legs
$item replace entity @s armor.feet from entity $(out) armor.feet
###

function dc:get_call {tick:100, command:"tp @s ~ ~-1000 ~", requirePos:false, requireEntity:true}