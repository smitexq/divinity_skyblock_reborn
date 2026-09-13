#Звуки
function entities:bosses/winter/abilities/lines/sound

execute positioned ~18 ~1 ~18 summon marker run function entities:bosses/winter/abilities/lines/on_marker {offset1:"~-1.4 ~ ~1.4", offset2:"~1.4 ~ ~-1.4"}
execute positioned ~-18 ~1 ~18 summon marker run function entities:bosses/winter/abilities/lines/on_marker {offset1:"~1.4 ~ ~1.4", offset2:"~-1.4 ~ ~-1.4"}