# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

item_name_list = [
	'Stone', 'Dirt', 'Coarse Dirt', 'Podzol', 
	'Grass', 'Cobblestone', 'Oak Wood Planks',
	'Spruce Wood Planks', 'Birch Wood Planks',
	'Jungle Wood Planks', 'Acacia Wood Planks',
	'Dark Oak Wood Planks', 'Oak Sapling', 
	'Spruce Sapling', 'Birch Sapling', 'Jungle Sapling', 
	'Dark Oak Sapling', 'Acacia Sapling', 'Sand', 
	'Red Sand', 'Gravel', 'Gold Ore', 'Iron Ore', 
	'Coal Ore', 'Oak Log', 'Spruce Log', 'Birch Log', 
	'Jungle Log', 'Dark Oak Log', 'Acacia Log', 'Oak Leaves',
	'Spruce Leaves', 'Birch Leaves', 'Jungle Leaves',
	'Acacia Leaves', 'Dark Oak Leaves', 'Glass', 
	'Lapis Lazui Ore', 'Lapis Lazui Block', 'Dispenser',
	'Sandstone', 'Chiseled Sandstone', 'Smooth Sandstone',
	'Note Block', 'Powered Rail', 'Detector Rail',
	'Sticky Piston', 'Cobweb', 'Piston', 'White Wool',
	'Orange Wool', 'Magenta Wool', 'Light Blue Wool',
	'Yellow Wool', 'Lime Wool', 'Pink Wool', 
	'Light Gray Wool', 'Gray Wool', 'Cyan Wool',
	'Purple Wool', 'Blue Wool', 'Brown Wool',
	'Green Wool', 'Red Wool', 'Black Wool',
	'Dandelion', 'Poppy', 'Blue Orchid', 'Allium',
	'Azure Bluet', 'Tulips', 'Oxeye Daisy', 
	'Sunflower', 'Lilac', 'Rose Bush', 'Peony', 
	'Red Tulip', 'White Tulip', 'Pink Tulip', 
	'Orange Tulip', 'Red Mushroom', 'Brown Mushroom',
	'Gold Block', 'Iron Block', 'Stone Slab',
	'Sandstone Slab', 'Oak Wood Slab', 'Spruce Wood Slab',
	'Birch Wood Slab', 'Jungle Wood Slab', 'Dark Oak Wood Slab',
	'Acacia Wood Slab', 'Cobblestone Slab', 'Brick Slab', 
	'Stone Brick Slab', 'Nether Brick Slab', 'Quartz Slab', 
	'Brick', 'TNT', 'Bookcase', 'Mossy Cobblestone', 'Obsidian',
	'Torch', 'Oak Wood Stairs', 'Spruce Wood Stairs',
	'Birch Wood Stairs', 'Jungle Wood Stairs', 
	'Dark Oak Wood Stairs', 'Acacia Wood Stairs', 'Chest', 'Diamond Ore',
	'Diamond Block', 'Crafting Bench', 'Furnace', 'Ladder',
	'Minecart Rail', 'Cobblestone Stairs', 'Lever',
	'Stone Pressure Pad', 'Wood Pressure Pad', 'Redstone Ore',
	'Redstone Torch', 'Stone Button', 'Snow Slab', 'Ice',
	'Snow', 'Cactus', 'Clay Block', 'Jukebox', 'Fence',
	'Pumpkin', 'Netherrack', 'Glowstone', 'Jack-O-Lantern',
	'White Stained Glass', 'Orange Stained Glass',
	'Magenta Stained Glass', 'Light Blue Stained Glass',
	'Yellow Stained Glass', 'Lime Stained Glass',
	'Pink Stained Glass', 'Gray Stained Glass',
	'Light Gray Stained Glass', 'Cyan Stained Glass',
	'Purple Stained Glass', 'Blue Stained Glass',
	'Brown Stained Glass', 'Green Stained Glass',
	'Red Stained Glass', 'Black Stained Glass',
	'Wooden Trapdoor', 'Iron Bars', 'Glass Pane',
	'Watermelon', 'Vine', 'Fence Gate',
	'Brick Stairs', 'Stone Brick Stairs',
	'Mycelium', 'Lilypad', 'Netherbrick Block',
	'Netherbrick Fence', 'Netherbrick Stairs', 
	'Enchanting Table', 'End Stone', 'Dragon Egg',
	'Redstone Lamp', 'Sandstone Stairs', 'Emerald Ore',
	'Ender Chest', 'Tripwire Hook', 'Emerald Block',
	'Beacon', 'Cobblestone Wall', 'Wooden Button',
	'Anvil', 'Trapped Chest', 'Gold Pressure Pad',
	'Iron Pressure Pad', 'Daylight Sensor', 'Redstone Block',
	'Nether Quartz Ore', 'Hopper', 'Quartz Block',
	'Chiseled Quartz', 'Quartz Pillar', 
	'Quartz Stairs', 'Activator Rail', 'Dropper',
	'White Stained Clay', 'Orange Stained Clay',
	'Magenta Stained Clay', 'Light Blue Stained Clay',
	'Orange Stained Clay', 'Lime Stained Clay',
	'Pink Stained Clay', 'Gray Stained Clay',
	'Light Gray Stained Clay', 'Cyan Stained Clay',
	'Purple Stained Clay', 'Blue Stained Clay',
	'Brown Stained Clay', 'Dark Green Clay',
	'Red Stained Clay', 'Black Stained Clay', 'Stained Clay',
	'Packed Ice', 'White Stained Glass',
	'Orange Stained Glass Pane', 'Magenta Stained Glass Pane', 
	'Light Blue Stained Glass Pane', 'Yellow Stained Glass Pane', 
	'Lime Stained Glass Pane', 'Pink Stained Glass Pane', 
	'Gray Stained Glass Pane', 'Light Gray Stained Glass Pane', 
	'Cyan Stained Glass Pane', 'Purple Stained Glass Pane', 
	'Blue Stained Glass Pane', 'Brown Stained Glass Pane',
	'Green Stained Glass Pane', 'Red Stained Glass Pane', 
	'Black Stained Glass Pane', 'White Carpet', 'Orange Carpet',
	'Magenta Carpet', 'Light Blue Carpet', 'Yellow Carpet',
	'Lime Carpet', 'Pink Carpet', 'Light Gray Carpet',
	'Gray Carpet', 'Cyan Carpet', 'Purple Carpet', 'Blue Carpet', 
	'Brown Carpet', 'Green Carpet', 'Red Carpet', 'Black Carpet',
	'Wood Shovel', 'Wood Pickaxe', 'Wood Axe', 'Wood Hoe', 'Wood Sword',
	'Stone Shovel', 'Stone Pickaxe', 'Stone Axe', 'Stone Hoe', 'Stone Sword',
	'Iron Shovel', 'Iron Pickaxe', 'Iron Axe', 'Iron Hoe', 'Iron Sword',
	'Gold Shovel', 'Gold Pickaxe', 'Gold Axe', 'Gold Hoe', 'Gold Sword',
	'Diamond Shovel', 'Diamond Pickaxe', 'Diamond Axe', 'Diamond Hoe', 'Diamond Sword',
	'Flint & Steel', 'Apple', 'Bow', 'Arrow', 'Coal', 'Charcoal',
	'Diamond', 'Iron Ingot', 'Gold Ingot', 
	'Bowl', 'Mushroom Soup', 'String',
	'Feather', 'Gunpowder', 'Seeds', 'Wheat',
	'Bread', 'Leather Helmet', 'Leather Chest',
	'Leather Pants', 'Leather Boots', 
	'Chainmail Helmet', 'Chainmail Chest', 
	'Chainmail Pants', 'Chainmail Boots',
	'Iron Helmet', 'Iron Chest',
	'Iron Pants', 'Iron Boots',
	'Diamond Helmet', 'Diamond Chest',
	'Diamond Pants', 'Diamond Boots',
	'Gold Helmet', 'Gold Chest', 'Gold Pants', 
	'Gold Boots', 'Gravel', 'Porkchop',
	'Cooked Porkchop', 'Painting', 
	'Golden Apple', 'Sign', 'Door',
	'Bucket', 'Water Bucket', 'Lava Bucket',
	'Minecart', 'Saddle', 'Iron Door',
	'Redstone Dust', 'Snowball', 'Boat',
	'Leather', 'Milk Bucket', 'Brick',
	'Clay', 'Reeds', 'Paper', 'Book',
	'Slimeball', 'Minecart with Chest',
	'Minecart with Furnace', 'Egg', 'Compass',
	'Fishing Pole', 'Clock', 'Glowstone Dust',
	'Fish', 'Salmon', 'Clownfish', 'Pufferfish',
	'Cooked Fish', 'Cooked Salmon', 'Ink Sac',
	'Rose Red', 'Cactus Green', 'Coco Beans',
	'Lapis Lazui', 'Purple Dye', 'Cyan Dye',
	'Light Gray Dye', 'Gray Dye', 'Pink Dye',
	'Lime Dye', 'Dandelion Yellow', 
	'Light Blue Dye', 'Magenta Dye', 'Orange Dye',
	'Bonemeal', 'Bone', 'Sugar', 'Cake',
	'Bed', 'Redstone Repeater', 'Cookie',
	'Map', 'Shears', 'Melon',
	'Pumpkin Seeds', 'Melon Seeds',
	'Beef', 'Cooked Beef', 'Chicken',
	'Cooked Chicken', 'Zombie Flesh',
	'Ender Pearl', 'Blaze Rod', 'Ghast Tear',
	'Gold Nugget', 'Nether Wart',
	'Water Bottle', 'Glass Bottle',
	'Spider Eye', 'Fermented Spider Eye',
	'Blaze Powder', 'Magma Cream', 
	'Brewing Station', 'Cauldron', 'Eye of Ender',
	'Glistering Melon', 'Bottle o\' Enchanting',
	'Fire Charge', 'Book and Quill', 'Written Book',
	'Emerald', 'Item Frame', 'Flower Pot',
	'Carrot', 'Potato', 'Baked Potato',
	'Poison Potato', 'Paper', 'Golden Carrot',
	'Wither Skull', 'Carrot on a Stick',
	'Nether Star', 'Pumpkin Pie', 
	'Firework Rocket', 'Firework Star',
	'Enchanted Book', 'Redstone Comparator',
	'Nether Brick', 'Nether Quartz',
	'Minecart with TNT', 'Minecart with Hopper',
	'13 Disc', 'Cat Disc', 'Blocks Disc',
	'Chirp Disc', 'Far Disc', 'Mall Disc',
	'Mellohi Disc', 'Stal Disc', 'Strad Disc',
	'Ward Disc', '11 Disc', 'Wait Disc',
	'Skeleton Head', 'Zombie Head',
	'Creeper Head', 'Iron Horse Armor',
	'Gold Horse Armor', 'Diamond Horse Armor',
	'Lasso', 'Nametag', 'Sponge Block', 'Mushroom Block'
	'Hardened Clay', 'Coal Block', 'Bookshelf',
	'Stick'
]

item_class_list = [
	'2 x 2 Crafting Grid', '3 x 3 Crafting Grid',
	'Furnace Fuel', 'Wool', 'Wood', 'Hoe', 'Axe',
	'Shovel', 'Pickaxe', 'Wood-Level Pickaxe',
	'Stone-Level Pickaxe', 'Iron-Level Pickaxe',
	'Diamond-Level Pickaxe', 'Plantable', 'Sand',
	'Water', 'Food', 'Fishing Pole', 'Requires Silk Touch',
	'Dirt'
]

process_type_names = [
	'Inventory Crafting', 'Crafting',
	'Smelting/Cooking', 'Basic Agriculture',
	'Tilled Agriculture', 'Sand Agriculture', 
	'Fishing', 'Wood-Pick Level Mining',
	'Stone-Pick Level Mining',
	'Iron-Pick Level Mining',
	'Diamond-Pick Level Mining'
]

process_type_descriptions = [
	'Crafting using your inventory.',
	'Crafting using an external block of some kind.',
	'Melting/Cooking down one item into another item.',
	'Agriculture where the plant only needs to be planted - no extra fuss.',
	'Agriculture requiring a little more effort on your part.',
	'Agriculture without water - just sand.',
	'Fishing things out of the water the old way.',
	'Mining that requires at least a Wood Pickaxe.',
	'Mining that requires at least a Stone Pickaxe.',
	'Mining that requires at least a Iron Pickaxe,',
	'Mining that requires at least a Diamond Pickaxe'
]

class_lists = [
	# 2 x 2 Crafting Grid
	['Crafting Bench'],
	# 3 x 3 Crafting Grid
	['Crafting Bench'],
	# Furnace Fuel
	[
		'Lava Bucket', 'Coal Block', 'Blaze Rod',
		'Coal', 'Charcoal', 'Oak Log',
		'Spruce Log', 'Birch Log', 'Jungle Log',
		'Dark Oak Log', 'Acacia Log', 'Oak Wood Planks',
		'Spruce Wood Planks', 'Birch Wood Planks',
		'Jungle Wood Planks', 'Acacia Wood Planks',
		'Dark Oak Wood Planks', 'Wood Pressure Pad',
		'Fence', 'Fence Gate', 'Oak Wood Stairs', 
		'Spruce Wood Stairs', 'Birch Wood Stairs', 
		'Jungle Wood Stairs', 'Dark Oak Wood Stairs', 
		'Acacia Wood Stairs', 'Wooden Trapdoor',
		'Crafting Bench', 'Bookshelf', 'Chest', 
		'Trapped Chest', 'Daylight Sensor', 'Jukebox',
		'Note Block', 'Mushroom Block', 'Wood Shovel', 
		'Wood Pickaxe', 'Wood Axe', 'Wood Hoe', 
		'Wood Sword',  'Oak Wood Slab', 'Spruce Wood Slab',
		'Birch Wood Slab', 'Jungle Wood Slab', 
		'Dark Oak Wood Slab', 'Acacia Wood Slab',
		'Stick', 'Oak Sapling', 'Spruce Sapling', 
		'Birch Sapling', 'Jungle Sapling', 'Dark Oak Sapling', 
		'Acacia Sapling', 'End Stone'
	],
	# Hoe
	['Wood Hoe', 'Stone Hoe', 'Iron Hoe', 'Gold Hoe', 'Diamond Hoe'],
	# Axe
	['Wood Axe', 'Stone Axe', 'Iron Axe', 'Gold Axe', 'Diamond Axe'],
	# Shovel
	['Wood Shovel', 'Stone Shovel', 'Iron Shovel', 'Gold Shovel', 'Diamond Shovel'],
	# Pickaxe
	['Wood Pickaxe', 'Stone Pickaxe', 'Iron Pickaxe', 'Gold Pickaxe', 'Diamond Pickaxe'],
	# Wood-Level Pickaxe
	['Wood Pickaxe', 'Stone Pickaxe', 'Iron Pickaxe', 'Diamond Pickaxe'],
	# Stone-Level Pickaxe
	['Stone Pickaxe', 'Iron Pickaxe', 'Diamond Pickaxe'],
	# Iron-Level Pickaxe
	['Iron Pickaxe', 'Diamond Pickaxe'],
	# Diamond-Level Pickaxe
	['Diamond Pickaxe'],
	# Plantable
	['Seeds', 'Carrot', 'Potato', 'Pumpkin Seeds', 'Melon Seeds' ],
	# Sand
	['Sand', 'Red Sand' ],
	# Water 
	['Water Bucket'],
	# Food
	[
		'Bread', 'Apple', 'Golden Apple',
		'Porkchop', 'Cooked Porkchop', 'Beef', 
		'Cooked Beef', 'Chicken', 'Cooked Chicken', 
		'Zombie Flesh', 'Cookie', 'Cake',
		'Cooked Fish', 'Cooked Salmon', 
		'Pumpkin Pie', 'Spider Eye',
		'Mushroom Soup', 'Fish', 'Salmon', 
		'Clownfish', 'Pufferfish'
	],
	# Fishing Pole
	['Fishing Pole'],
	# Requires Silk Touch
	[
		'Stone', 'Coal Ore', 'Lapis Lazui Ore', 
		'Diamond Ore', 'Redstone Ore', 'Cobweb',
		'Ice', 'Mushroom Block', 'Podzol', 
		'Mycelium', 'Emerald Ore', 'Nether Quartz Ore',
		'Packed Ice' 'White Stained Glass', 'Orange Stained Glass',
		'Magenta Stained Glass', 'Light Blue Stained Glass',
		'Yellow Stained Glass', 'Lime Stained Glass',
		'Pink Stained Glass', 'Gray Stained Glass',
		'Light Gray Stained Glass', 'Cyan Stained Glass',
		'Purple Stained Glass', 'Blue Stained Glass',
		'Brown Stained Glass', 'Green Stained Glass',
		'Red Stained Glass', 'Black Stained Glass',
		'White Stained Glass', 'Orange Stained Glass Pane', 
		'Magenta Stained Glass Pane', 'Light Blue Stained Glass Pane', 
		'Yellow Stained Glass Pane', 'Lime Stained Glass Pane', 
		'Pink Stained Glass Pane', 'Gray Stained Glass Pane', 
		'Light Gray Stained Glass Pane', 'Cyan Stained Glass Pane', 
		'Purple Stained Glass Pane', 'Blue Stained Glass Pane', 
		'Brown Stained Glass Pane', 'Green Stained Glass Pane', 
		'Red Stained Glass Pane', 'Black Stained Glass Pane'
	],
	# Dirt
	['Dirt', 'Coarse Dirt', 'Podzol', 'Grass']
]

#Make-a-da modpack
mod_packs = ModPack.create(name: 'Vanilla 1.7')

mod = Mod.create(name: 'Minecraft 1.7')

item_name_list.each do |name|
	Item.create(name: name, mod_id: mod.id)
end

item_class_list.each do |name|
	ItemClass.create(name: name)
end

process_type_names.zip(process_type_descriptions).each do |n, d|
	ProcessType.create(name: n, description: d)
end

class_lists.zip(item_class_list) do | class_name, item_list |
	class_id = ItemClass.where(name: class_name).id
	
	item_list.each do |item_name|
		item_id = Item.where(name: item_name).id
		ItemClassInclusion.create(item_id: item_id, item_class_id: class_id)
	end
end