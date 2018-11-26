execute as @a[nbt={Inventory:[{id:"minecraft:torch",Slot:-106b}]}] run scoreboard players set @p light 1

execute if entity @a[scores={light=1}] run effect give @p minecraft:night_vision 13 1 true

execute as @a[scores={light=1}, nbt=!{Inventory:[{id:"minecraft:torch",Slot:-106b}]}] run effect clear @p minecraft:night_vision

execute as @a[scores={light=1}, nbt=!{Inventory:[{id:"minecraft:torch",Slot:-106b}]}] run scoreboard players set @p light 0
