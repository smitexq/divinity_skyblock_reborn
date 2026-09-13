$tag @e[type=interaction, tag=$(out)] remove target
$tag @e[type=interaction, tag=$(out)] remove attack

$data remove entity @e[type=interaction, tag=$(out), limit=1] interaction
$data remove entity @e[type=interaction, tag=$(out), limit=1] attack