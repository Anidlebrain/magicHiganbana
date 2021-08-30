##================================================
##          [Author]:   Anidlebrain
##          [License]:  CC BY-NC-SA 4.0
##          [Info]:     植物魔法 精灵门
##================================================

#priority 2000
import mods.botania.ElvenTrade;

//闪耀纤维
recipes.remove(<naturesaura:gold_fiber>);
ElvenTrade.addRecipe([<naturesaura:gold_fiber>], [<botania:thornchakram:1>, <randomthings:ingredient:12>]);

//暮色钥匙
ElvenTrade.addRecipe([<contenttweaker:twilightforest_key>], [<randomthings:spectrekey>]);


