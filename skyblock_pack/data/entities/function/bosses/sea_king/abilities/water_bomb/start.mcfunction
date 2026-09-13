#Звуки + имя для изменения
execute as @a[distance=..50] at @s run playsound minecraft:entity.creeper.primed ambient @s
data modify storage dsb:bosses WaterBomb.name.stage_2 set value '{"color":"gold","translate":"dsb.entity.water_bomb"}'
data modify storage dsb:bosses WaterBomb.name.stage_3 set value '{"color":"red","translate":"dsb.entity.water_bomb"}'

#Сама бомба
summon armor_stand ~ ~1 ~ {DisabledSlots:4144959, Silent:1b, Invulnerable:1b,Small:1b, Invisible:1b, Motion:[0d,0.9d,0d],Tags:["water_bomb"], attributes:[{id:"minecraft:gravity",base:0.02}], ArmorItems:[{},{},{},{id:"player_head",count:1b, components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmM1NjNiOWI1ODI0MDlmNDFmMGUwNzgxYTk4M2FmZTNkOGZlMmZiZjM4M2M1M2E1ZDI3NDMxNTU1NjRkNjgifX19"}]}}}], CustomNameVisible:1b, CustomName:'{"color":"yellow","translate":"dsb.entity.water_bomb"}'}

execute as @e[type=armor_stand, tag=water_bomb] run function entities:bosses/sea_king/abilities/water_bomb/on_bomb