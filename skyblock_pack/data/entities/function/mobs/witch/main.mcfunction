#Определние редкости зомби
execute if entity @s[tag=uncommon] run return run function entities:mobs/witch/uncommon/init
execute if entity @s[tag=rare] run return run function entities:mobs/witch/rare/init
execute if entity @s[tag=mystic] run return run function entities:mobs/witch/mystic/init