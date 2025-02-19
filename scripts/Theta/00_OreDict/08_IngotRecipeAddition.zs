#loader crafttweaker
#priority -10008
#packmode theta
#norun 

/*
Minecraft:Furnace
Immersive Engineering: Arc Furnace
Tech Reborn: Blast Furnace
Thermal Expansion: Induction Smelter
Minecraft: Crafting Table
Tinkers' Construct: Casting Table
*/

for key, dictIngot in hashIngot {
	if (hashOre has key) {
		furnace.addRecipe(dictIngot.firstItem, hashOre[key], 0.100000);
		mods.immersiveengineering.ArcFurnace.addRecipe(dictIngot.firstItem, hashOre[key], slag, 100, 256, [], "Ores");
		mods.techreborn.blastFurnace.addRecipe(dictIngot.firstItem, hashDust["DarkAshes"].firstItem, hashOre[key], null, 50, 256, 1000).setUseOreDict(true);
		mods.thermalexpansion.inductionSmelter.addRecipe(dictIngot.firstItem * 2, hashOre[key].firstItem, sand, 6400, slag, 15);
	}
	if (hashCluster has key) {
		furnace.addRecipe(dictIngot.firstItem * 2, hashCluster[key], 0.100000);
		mods.immersiveengineering.ArcFurnace.addRecipe(dictIngot.firstItem * 2, hashCluster[key], slag, 100, 256, [], "Clusters");
		mods.techreborn.blastFurnace.addRecipe(dictIngot.firstItem * 2, hashDust["DarkAshes"].firstItem, hashCluster[key], null, 50, 256, 1000).setUseOreDict(true);
		mods.thermalexpansion.inductionSmelter.addRecipe(dictIngot.firstItem * 3, hashCluster[key].firstItem, sand, 6400, slag, 15);
	}
	if (hashDust has key) {
		furnace.addRecipe(dictIngot.firstItem, hashDust[key], 0.000000);
		mods.immersiveengineering.ArcFurnace.addRecipe(dictIngot.firstItem, hashDust[key], slag, 50, 256, [], "Dusts");
		mods.techreborn.blastFurnace.addRecipe(dictIngot.firstItem * 2, hashDust["DarkAshes"].firstItem, hashDust[key], null, 25, 256, 1000).setUseOreDict(true);
		mods.thermalexpansion.inductionSmelter.addRecipe(dictIngot.firstItem * 2, hashDust[key].firstItem, sand, 3200, slag, 15);
	}
	if (hashBlock has key) {
		recipes.addShapeless(key.toLowerCase() ~ "_ingot_from_block", dictIngot.firstItem * 9, [
			hashBlock[key]
		]);
	}
	if (hashMolten has key) {
		mods.tconstruct.Casting.addTableRecipe(dictIngot.firstItem, <tconstruct:cast_custom>, hashMolten[key], 144, false, 72);
	}
}
