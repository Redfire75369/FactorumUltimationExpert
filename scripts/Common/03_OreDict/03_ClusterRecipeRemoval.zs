#loader crafttweaker
#priority -00303
#packmode theta sigma omega

for key, dictCluster in hashCluster {
	for itemCluster in dictCluster.items {
		mods.thaumcraft.Crucible.removeRecipe(itemCluster);
	}
}
