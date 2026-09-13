$setblock 17112022 0 0 light_blue_shulker_box{Items:[{Slot:0b, count:1, id:"$(name)"}]}

#Если этот предмет - блок, то переводим его по ванильному пути - "block.minecraft.?", иначе "item.minecraft.?"
$execute if items block 17112022 0 0 container.0 #entities:quest_blocks run title @s actionbar {"translate":"dsb.events.quests.lack_of_items","color":"red", "with":[{"text":"$(count)"},{"translate":"block.minecraft.$(name)"},{"score":{"objective":"variables","name":"*var1"}}]}
$execute unless items block 17112022 0 0 container.0 #entities:quest_blocks run title @s actionbar {"translate":"dsb.events.quests.lack_of_items","color":"red", "with":[{"text":"$(count)"},{"translate":"item.minecraft.$(name)"},{"score":{"objective":"variables","name":"*var1"}}]}

setblock 17112022 0 0 air