data merge entity @s {height:0.23, width:0.23, Tags:["UpgradeInLibrary"]}
#тег-привязка к самой библиотеки
data modify entity @s Tags append from storage dsb:cts Libraries[-1].UUID


data modify storage dsb:cts Libraries[-1].Upgrades append value {item:{}}
#По uuid interaction'a в мире находим это хранилище с item (какой фолиант хранится)
function dc:gu/generate
data modify storage dsb:cts Libraries[-1].Upgrades[-1].UUID set from storage gu:main out