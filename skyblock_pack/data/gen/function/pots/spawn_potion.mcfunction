kill @s
execute store result score #id Pots run random value 1..79

execute if score #id Pots matches 1 run return run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:2.5f,Duration:600,RadiusPerTick:-0.01f,potion_contents:{potion:"minecraft:strong_swiftness"},ReapplicationDelay:60}
execute if score #id Pots matches 2 run return run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:2.5f,Duration:600,RadiusPerTick:-0.01f,potion_contents:{potion:"minecraft:long_swiftness"},ReapplicationDelay:60}
execute if score #id Pots matches 3 run return run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:2.5f,Duration:600,RadiusPerTick:-0.01f,potion_contents:{potion:"minecraft:strong_healing"},ReapplicationDelay:60}
execute if score #id Pots matches 4 run return run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:2.5f,Duration:600,RadiusPerTick:-0.01f,potion_contents:{potion:"minecraft:healing"},ReapplicationDelay:60}
execute if score #id Pots matches 5 run return run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:2.5f,Duration:600,RadiusPerTick:-0.01f,potion_contents:{potion:"minecraft:strength"},ReapplicationDelay:60}
execute if score #id Pots matches 6 run return run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:2.5f,Duration:600,RadiusPerTick:-0.01f,potion_contents:{potion:"minecraft:long_strength"},ReapplicationDelay:60}
execute if score #id Pots matches 7 run return run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:2.5f,Duration:600,RadiusPerTick:-0.01f,potion_contents:{potion:"minecraft:strong_strength"},ReapplicationDelay:60}
execute if score #id Pots matches 8 run return run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:2.5f,Duration:600,RadiusPerTick:-0.01f,potion_contents:{potion:"minecraft:regeneration"},ReapplicationDelay:60}
execute if score #id Pots matches 9 run return run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:2.5f,Duration:600,RadiusPerTick:-0.01f,potion_contents:{potion:"minecraft:long_regeneration"},ReapplicationDelay:60}
execute if score #id Pots matches 10 run return run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:2.5f,Duration:600,RadiusPerTick:-0.01f,potion_contents:{potion:"minecraft:strong_regeneration"},ReapplicationDelay:60}
execute if score #id Pots matches 11 run return run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:2.5f,Duration:600,RadiusPerTick:-0.01f,potion_contents:{potion:"minecraft:swiftness"},ReapplicationDelay:60}
execute if score #id Pots matches 12 run return run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:2.5f,Duration:600,RadiusPerTick:-0.01f,potion_contents:{potion:"minecraft:fire_resistance"},ReapplicationDelay:60}
execute if score #id Pots matches 13 run return run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:2.5f,Duration:600,RadiusPerTick:-0.01f,potion_contents:{potion:"minecraft:long_fire_resistance"},ReapplicationDelay:60}
execute if score #id Pots matches 14 run return run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:2.5f,Duration:600,RadiusPerTick:-0.01f,potion_contents:{potion:"minecraft:invisibility"},ReapplicationDelay:60}
execute if score #id Pots matches 15 run return run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:2.5f,Duration:600,RadiusPerTick:-0.01f,potion_contents:{potion:"minecraft:long_invisibility"},ReapplicationDelay:60}
execute if score #id Pots matches 16 run return run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:2.5f,Duration:600,RadiusPerTick:-0.01f,potion_contents:{potion:"minecraft:night_vision"},ReapplicationDelay:60}
execute if score #id Pots matches 17 run return run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:2.5f,Duration:600,RadiusPerTick:-0.01f,potion_contents:{potion:"minecraft:long_night_vision"},ReapplicationDelay:60}

execute if score #id Pots matches 18..21 run return run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:2.5f,Duration:600,RadiusPerTick:-0.01f,potion_contents:{potion:"minecraft:slowness"},ReapplicationDelay:60}
execute if score #id Pots matches 22..25 run return run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:2.5f,Duration:600,RadiusPerTick:-0.01f,potion_contents:{potion:"minecraft:long_slowness"},ReapplicationDelay:60}
execute if score #id Pots matches 25..29 run return run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:2.5f,Duration:600,RadiusPerTick:-0.01f,potion_contents:{potion:"minecraft:poison"},ReapplicationDelay:60}
execute if score #id Pots matches 30..34 run return run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:2.5f,Duration:600,RadiusPerTick:-0.01f,potion_contents:{potion:"minecraft:long_poison"},ReapplicationDelay:60}
execute if score #id Pots matches 35..39 run return run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:2.5f,Duration:600,RadiusPerTick:-0.01f,potion_contents:{potion:"minecraft:strong_poison"},ReapplicationDelay:60}
execute if score #id Pots matches 40..44 run return run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:2.5f,Duration:600,RadiusPerTick:-0.01f,potion_contents:{potion:"minecraft:harming"},ReapplicationDelay:60}
execute if score #id Pots matches 45..49 run return run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:2.5f,Duration:600,RadiusPerTick:-0.01f,potion_contents:{potion:"minecraft:strong_harming"},ReapplicationDelay:60}

execute if score #id Pots matches 50..64 run return run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:2.5f,Duration:600,RadiusPerTick:-0.01f,potion_contents:{potion:"minecraft:infested"},ReapplicationDelay:60}
execute if score #id Pots matches 65..79 run return run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:2.5f,Duration:600,RadiusPerTick:-0.01f,potion_contents:{potion:"minecraft:oozing"},ReapplicationDelay:60}