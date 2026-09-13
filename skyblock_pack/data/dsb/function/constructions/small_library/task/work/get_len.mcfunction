$data modify storage dsb:cts Temp.Current set from storage dsb:cts Libraries[{UUID:$(UUID)}]
execute store result score *var1 variables run data get storage dsb:cts Temp.Current.Points

execute store result storage dsb:cts Temp.len int 1 run scoreboard players remove *var1 variables 1

data remove storage dsb:cts Temp.Current