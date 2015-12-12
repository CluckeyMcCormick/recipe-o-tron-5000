echo "<--------[ Generating Variables on Following Schema ]-------->"
echo "MOD_PACK has following variables: "
echo "	name, a string"
echo "	mods, a reference"
echo "	It has the following associations: "
echo "		mods, has_many"
echo "		recipes, belongs_to"

echo "MOD has following variables: "
echo "	name, a string"
echo "  items, a reference"       
echo "	It has the following associations:"
echo "		items, has_many"
echo "		mod_packs, belongs_to"

echo "ITEM has following variables:"
echo "	name, a string"
echo "	basic_item, a boolean"
echo "	item_class, a reference"
echo "	It has the following associations:"
echo "		input_quantities, has_many, rich association"
echo "		output_quantities, has_many, rich association"
echo "		mods, belongs_to"
echo "		process_types, belongs_to"
echo "		item_classes, has_one"

echo "RECIPE has following variables:"
echo "	preferred_recipe, a boolean"
echo "  mod_packs, a reference"
echo "	process_types, a reference"
echo "	It has the following associations:"
echo "		input_quantities, has_many, rich association"
echo "		output_quantities, has_many, rich association"
echo "		inputs, has_many through input_quantities, class_name => Item"
echo "		outputs, has_many through output_quantities, class_name => Item"
echo "		mod_packs, has_many"
echo "		process_types, has_one"

echo "INPUT_QUANTITY has following variables:"
echo "  count, an integer"
echo "	item, a reference"
echo "	recipe, a reference"
echo "	It has the following associations:"
echo "		items, belongs_to"
echo "		recipes, belongs_to"

echo "OUTPUT_QUANTITY has following variables:"
echo "  count, an integer"
echo "	item, a reference"
echo "	recipe, a reference"
echo "	It has the following associations:"
echo "		items, belongs_to"
echo "		recipes, belongs_to"

echo "PROCESS_TYPE has following variables"
echo "	name, a string"
echo "	description, text"
echo "  item_classes, a reference"
echo "	It has the following associations:"
echo "		items, has_many"
echo "		recipe, belongs_to"
echo "		item_classes, has_many"

echo "ITEM_CLASS has following variables"
echo "	name:string"
echo "	It has the following associations:"
echo "		items, belongs_to"
echo "		process_types, belongs_to"

echo "<--------[ Generating... ]-------->"
echo "Generating MOD_PACK..."
rails g model mod_pack name:string mods:references -f
echo "Generating MOD..."
rails g model mod name:string items:references -f
echo "Generating ITEM..."
rails g model item name:string basic_item:boolean -f
echo "Generating RECIPE..."
rails g model recipe preferred_recipe:boolean mod_packs:references -f
echo "Generating INPUT_QUANTITY..."
rails g model input_quantity count:integer recipe:references item:references -f
echo "Generating OUTPUT_QUANTITY..."
rails g model output_quantities count:integer recipe:references item:references -f
echo "Generating PROCESS_TYPE..."
rails g model process_type name:string description:text item_classes:references -f
echo "Generating ITEM_CLASS..."
rails g model item_class name:string -f