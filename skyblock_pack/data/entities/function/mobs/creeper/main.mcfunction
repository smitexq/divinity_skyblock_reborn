#Определние редкости зомби
execute if entity @s[tag=uncommon] run return run function entities:mobs/creeper/uncommon/init
execute if entity @s[tag=rare] run return run function entities:mobs/creeper/rare/init
execute if entity @s[tag=mystic] run return run function entities:mobs/creeper/mystic/init