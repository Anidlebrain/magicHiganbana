##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     空岛资源 切割刀          ##
##################################################

#priority 2000
import mods.skyresources.knife;

knife.removeRecipe(<minecraft:stick>);
for item in <ore:plankWood>.items
{
	knife.addRecipe(<techreborn:plates:3>, item);
}
