$data modify storage dsb:cts Waystones.$(out).Pos set from entity @s Pos
$data modify storage dsb:cts Waystones.$(out).link set value false
$data modify storage dsb:cts Waystones.$(out).link_uuid set value "null"

$execute if dimension minecraft:overworld run data modify storage dsb:cts Waystones.$(out).dimension set value "overworld"
$execute if dimension minecraft:the_nether run data modify storage dsb:cts Waystones.$(out).dimension set value "the_nether"
$execute if dimension minecraft:the_end run data modify storage dsb:cts Waystones.$(out).dimension set value "the_end"


kill @s