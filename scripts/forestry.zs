import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;

// These are covered by GT meta tools
recipes.remove(<forestry:bronze_pickaxe>);
recipes.remove(<forestry:bronze_shovel>);


// Gears
recipes.remove(<forestry:gear_bronze>);
recipes.addShaped(<ore:gearBronze>.firstItem, [
  [<ore:stickBronze>, <ore:plateBronze>, <ore:stickBronze>], 
  [<ore:plateBronze>, <ore:craftingToolScrewdriver>, <ore:plateBronze>], 
  [<ore:stickBronze>, <ore:plateBronze>, <ore:stickBronze>]]);

recipes.remove(<forestry:gear_copper>);
recipes.addShaped(<ore:gearCopper>.firstItem, [
  [<ore:stickCopper>, <ore:plateCopper>, <ore:stickCopper>], 
  [<ore:plateCopper>, <ore:craftingToolScrewdriver>, <ore:plateCopper>], 
  [<ore:stickCopper>, <ore:plateCopper>, <ore:stickCopper>]]);
  
recipes.remove(<forestry:gear_tin>);
recipes.addShaped(<ore:gearTin>.firstItem, [
  [<ore:stickTin>, <ore:plateTin>, <ore:stickTin>], 
  [<ore:plateTin>, <ore:craftingToolScrewdriver>, <ore:plateTin>], 
  [<ore:stickTin>, <ore:plateTin>, <ore:stickTin>]]);  


// WOOD PILES
var woodPile = <forestry:wood_pile>;

recipes.remove(woodPile);
recipes.addShapeless(woodPile, [<ore:logWood>, <ore:logWood>, <ore:logWood>, <ore:logWood>, <ore:logWood>, <ore:logWood>, <ore:logWood>, <ore:logWood>, <ore:logWood>]);

// GT Style block crafting
val compressor as RecipeMap = RecipeMap.getByName("compressor");

var blockCopper = <forestry:resource_storage:1>;
var blockTin = <forestry:resource_storage:2>;
var blockBronze = <forestry:resource_storage:3>;
var blockApatite = <forestry:resource_storage>;

recipes.remove(blockApatite);

compressor.recipeBuilder()
	.inputs(<ore:gemApatite> * 9)
	.outputs(blockApatite)
	.duration(400).EUt(2)
	.buildAndRegister();

recipes.remove(blockCopper);
recipes.remove(blockTin);
recipes.remove(blockBronze);
recipes.remove(<forestry:charcoal>);

// Disable forestry scoop in lieue of GT version
scripts.functions.disableItem(<forestry:scoop>);

// Smoker requires flint and steel

var smoker = <forestry:smoker>;
recipes.remove(smoker);
recipes.addShaped("forestry_smoker", smoker, [[<ore:leather>, <ore:stickWood>, <ore:stickTin>], [<ore:leather>, <forestry:ash>, <ore:plateTin>], [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>]]);
