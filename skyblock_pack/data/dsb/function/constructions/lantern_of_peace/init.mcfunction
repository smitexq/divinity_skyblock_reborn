$data modify storage dsb:cts LanternOfPeace.$(out).itemCount set value 0
#tag @s add work

function dsb:constructions/lantern_of_peace/on_pos
$function dsb:constructions/lantern_of_peace/work/main {out:$(out)}