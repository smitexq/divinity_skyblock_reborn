$data modify storage dsb:cts Temp.Current set from storage dsb:cts Libraries[{UUID:$(UUID)}]
$data modify storage dsb:cts Temp.Pos set from storage dsb:cts Temp.Current.Points[$(index)]

data remove storage dsb:cts Temp.Current