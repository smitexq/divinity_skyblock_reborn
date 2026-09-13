#В зависимости от того, что нажал первым нажал игрок - разный тег

$execute if data entity @e[type=interaction, tag=$(out),limit=1] interaction run return run tag @e[type=interaction, tag=$(out)] add target
$execute if data entity @e[type=interaction, tag=$(out),limit=1] attack run tag @e[type=interaction, tag=$(out)] add attack