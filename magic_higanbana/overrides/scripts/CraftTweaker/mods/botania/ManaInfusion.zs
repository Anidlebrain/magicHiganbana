##================================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     植物魔法 魔力池
##================================================

#priority 2000
import mods.botania.ManaInfusion;

//稀释魔力池 10000
//魔力池     1000000
//神话魔力池 1000000

//魔力尘
ManaInfusion.removeRecipe(<botania:manaresource:23>);
ManaInfusion.addInfusion(<botania:manaresource:23>, <skyresources:alchemyitemcomponent:2>, 500);

ManaInfusion.addInfusion(<roots:runic_dust>, <ore:randomThingsRuneDust>, 1000);

//炼金核心组件
ManaInfusion.addAlchemy(<contenttweaker:alchemical_corecomponents>, <skyresources:alchemy>, 9999);
ManaInfusion.addAlchemy(<contenttweaker:alchemical_corecomponents>, <skyresources:alchemy:1>, 8000);

val numAlchemyArray = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 14, 15] as int[];
for i in numAlchemyArray {
    val itemDef = <skyresources:alchemy>.definition;
    ManaInfusion.addAlchemy(<contenttweaker:alchemical_corecomponents>, itemDef.makeStack(i), 4000);
}

ManaInfusion.addAlchemy(<contenttweaker:alchemical_corecomponents>, <skyresources:alchemy:12>, 2000);
ManaInfusion.addAlchemy(<contenttweaker:alchemical_corecomponents>, <skyresources:alchemy:13>, 1000);

//仙人掌
ManaInfusion.removeRecipe(<minecraft:cactus>);


//草地之种
ManaInfusion.removeRecipe(<botania:grassseeds>);
ManaInfusion.addAlchemy(<botania:grassseeds>, <roots:spell_dust>.withTag({spell_holder: {spell_0: "spell_growth_infusion", selectedSlot: 0, lastCooldown: 0, cooldown: 0}}), 1000);

//魔力钢
ManaInfusion.removeRecipe(<botania:manaresource>);
ManaInfusion.addInfusion(<botania:manaresource>, <ore:ingotSteel>, 1000);
