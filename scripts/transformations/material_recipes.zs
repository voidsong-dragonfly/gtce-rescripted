import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;
import mods.gregtech.recipe.RecipeMap;



print("Changing recipes using disabled materials to using their enabled substituions");

//Add table brass recipes for bronze (disabled) items
recipes.remove(<gregtech:machine:2208>);
recipes.remove(<gregtech:machine:2196>);
recipes.remove(<gregtech:machine:3>);
recipes.addShaped(<gregtech:metal_casing> * 3,
    [[<ore:plateBrass>, <ore:craftingToolHardHammer>, <ore:plateBrass>],
    [<ore:plateBrass>, <ore:frameGtBrass>, <ore:plateBrass>],
    [<ore:plateBrass>, <ore:craftingToolWrench>, <ore:plateBrass>]]);
recipes.addShaped(<gregtech:boiler_casing> * 3,
    [[<ore:plateBrass>,<gregtech:fluid_pipe:2094>, <ore:plateBrass>],
    [<gregtech:fluid_pipe:2094>, <ore:frameGtBrass>, <gregtech:fluid_pipe:2094>],
    [<ore:plateBrass>, <gregtech:fluid_pipe:2094>, <ore:plateBrass>]]);
recipes.addShaped(<gregtech:boiler_firebox_casing> * 3,
    [[<ore:plateBrass>,<ore:stickBrass>, <ore:plateBrass>],
    [<ore:stickBrass>, <ore:frameGtBrass>, <ore:stickBrass>],
    [<ore:plateBrass>, <ore:stickBrass>, <ore:plateBrass>]]);
recipes.addShaped(<gregtech:turbine_casing> * 3,
    [[<ore:plateBrass>, <ore:craftingToolHardHammer>, <ore:plateBrass>],
    [<ore:gearBrass>, <ore:frameGtBrass>, <ore:gearBrass>],
    [<ore:plateBrass>, <ore:craftingToolWrench>, <ore:plateBrass>]]);
recipes.addShaped(<gregtech:machine:802>,
    [[<ore:plateBrass>,<ore:plateBrass>, <ore:plateBrass>],
    [<ore:plateBrass>, null, <ore:plateBrass>],
    [<ore:plateBrass>, <ore:plateBrass>, <ore:plateBrass>]]);
recipes.addShaped(<gregtech:machine:2208>,
    [[<ore:stickLongBrass>,<ore:plateBrass>, <ore:stickLongBrass>],
    [<ore:plateBrass>, <ore:craftingToolHardHammer>, <ore:plateBrass>],
    [<ore:stickLongBrass>, <ore:plateBrass>, <ore:stickLongBrass>]]);
recipes.addShaped(<gregtech:machine:812>,
    [[<ore:plateBrass>,<ore:blockGlass>, <ore:plateBrass>],
    [<ore:blockGlass>, null, <ore:blockGlass>],
    [<ore:plateBrass>, <ore:blockGlass>, <ore:plateBrass>]]);
recipes.addShaped(<gregtech:machine:2196>,
    [[null, <ore:craftingToolHardHammer>, null],
    [<ore:plateBrass>, <ore:stickLongBrass>, <ore:plateBrass>],
    [<ore:plateBrass>, <ore:stickLongBrass>, <ore:plateBrass>]]);
recipes.addShaped(<gregtech:machine:825>,
    [[<ore:plateWroughtIron>, <minecraft:crafting_table>, <ore:plateWroughtIron>],
    [<ore:plateWroughtIron>, <gregtech:machine:802>, <ore:plateWroughtIron>],
    [<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>]]);
recipes.addShaped(<gregtech:machine:3>,
    [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
    [<ore:plateSilver>, <gregtech:fluid_pipe:1094>, <ore:plateSilver>],
    [<gregtech:fluid_pipe:1094>, <gregtech:machine_casing:13>, <gregtech:fluid_pipe:1094>]]);
    
//Change turbine casing recipes to be neither sequential nor wrong material (steel != magnalium, looking at YOU)
//Crafting table
recipes.remove(<gregtech:turbine_casing:3>);
recipes.remove(<gregtech:turbine_casing:4>);
recipes.remove(<gregtech:turbine_casing:5>);
recipes.remove(<gregtech:turbine_casing:6>);
recipes.addShaped(<gregtech:turbine_casing:3> * 3,
    [[<ore:plateMagnalium>, <gregtech:fluid_pipe:184>, <ore:plateMagnalium>],
    [<ore:plateMagnalium>, <ore:frameGtMagnalium>, <ore:plateMagnalium>],
    [<ore:plateMagnalium>, <gregtech:fluid_pipe:184>, <ore:plateMagnalium>]]);
recipes.addShaped(<gregtech:turbine_casing:4> * 3,
    [[<ore:plateTitanium>, <gregtech:fluid_pipe:72>, <ore:plateTitanium>],
    [<ore:plateTitanium>, <ore:frameGtTitanium>, <ore:plateTitanium>],
    [<ore:plateTitanium>, <gregtech:fluid_pipe:72>, <ore:plateTitanium>]]);
recipes.addShaped(<gregtech:turbine_casing:5> * 3,
    [[<ore:plateStainlessSteel>, <gregtech:fluid_pipe:183>, <ore:plateStainlessSteel>],
    [<ore:plateStainlessSteel>, <ore:frameGtStainlessSteel>, <ore:plateStainlessSteel>],
    [<ore:plateStainlessSteel>, <gregtech:fluid_pipe:183>, <ore:plateStainlessSteel>]]);
recipes.addShaped(<gregtech:turbine_casing:6> * 3,
    [[<ore:plateTungstenSteel>, <gregtech:fluid_pipe:235>, <ore:plateTungstenSteel>],
    [<ore:plateTungstenSteel>, <ore:frameGtTungstenSteel>, <ore:plateTungstenSteel>],
    [<ore:plateTungstenSteel>, <gregtech:fluid_pipe:235>, <ore:plateTungstenSteel>]]);
//Assembler
RecipeMap.getByName("assembler").findRecipe(16, [<ore:plateMagnalium>.firstItem * 6, <gregtech:frame_blue_steel>], null).remove();
RecipeMap.getByName("assembler").findRecipe(16, [<ore:plateTitanium>.firstItem * 6, <gregtech:turbine_casing:3>], null).remove();
RecipeMap.getByName("assembler").findRecipe(16, [<ore:plateStainlessSteel>.firstItem * 6, <gregtech:turbine_casing:3>], null).remove();
RecipeMap.getByName("assembler").findRecipe(16, [<ore:plateTungstenSteel>.firstItem * 6, <gregtech:turbine_casing:3>], null).remove();
RecipeMap.getByName("assembler").recipeBuilder()
            .inputs([<ore:plateMagnalium>.firstItem * 6, <gregtech:fluid_pipe:184> * 2, <ore:frameGtMagnalium>.firstItem])
            .outputs([<gregtech:turbine_casing:3> * 3])
            .duration(50).EUt(16).buildAndRegister();
RecipeMap.getByName("assembler").recipeBuilder()
            .inputs([<ore:plateTitanium>.firstItem * 6, <gregtech:fluid_pipe:72> * 2, <ore:frameGtTitanium>.firstItem])
            .outputs([<gregtech:turbine_casing:4> * 3])
            .duration(50).EUt(16).buildAndRegister();
RecipeMap.getByName("assembler").recipeBuilder()
            .inputs([<ore:plateStainlessSteel>.firstItem * 6, <gregtech:fluid_pipe:183> * 2, <ore:frameGtStainlessSteel>.firstItem])
            .outputs([<gregtech:turbine_casing:5> * 3])
            .duration(50).EUt(16).buildAndRegister();
RecipeMap.getByName("assembler").recipeBuilder()
            .inputs([<ore:plateTungstenSteel>.firstItem * 6, <gregtech:fluid_pipe:235> * 2, <ore:frameGtTungstenSteel>.firstItem])
            .outputs([<gregtech:turbine_casing:6> * 3])
            .duration(50).EUt(16).buildAndRegister();
/*
//Change some ceramics to have proper production processes
RecipeMap.getByName("mixer").findRecipe(8, [<gregtech:meta_item_1:2018> * 3, <gregtech:meta_item_1:2006> * 2, <gregtech:meta_item_1:2078>], [<liquid:oxygen> * 7000]]);
RecipeMap.getByName("blast_furnace").recipeBuilder()
    .inputs([<gregtech:meta_item_1:2358> * 6, <gregtech:meta_item_1:2985> * 4, <gregtech:meta_item_1:2078>])
    .outputs([<gregtech:meta_item_1:11200> * 13])
    .property("temperature", 3600).duration(18360).EUt(120).buildAndRegister();*/
