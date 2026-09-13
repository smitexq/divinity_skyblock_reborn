#Определние редкости зомби
execute if entity @s[tag=uncommon] run return run function entities:mobs/zombie/uncommon/init
execute if entity @s[tag=rare] run return run function entities:mobs/zombie/rare/init
execute if entity @s[tag=mystic] run return run function entities:mobs/zombie/mystic/init