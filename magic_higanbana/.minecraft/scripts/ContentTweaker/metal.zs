#priority 4000
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;

//����ע��
// 铁
var iron = MaterialSystem.getMaterialBuilder().setName("Iron").setColor(9868950).build();

// 金
var gold = MaterialSystem.getMaterialBuilder().setName("Gold").setColor(15724416).build();

// 青金石
var lapis = MaterialSystem.getMaterialBuilder().setName("Lapis").setColor(9545175).build();

// 红石
var redstone = MaterialSystem.getMaterialBuilder().setName("Redstone").setColor(16744576).build();

// 钻石
var diamond = MaterialSystem.getMaterialBuilder().setName("Diamond").setColor(9889496).build();

// 绿宝石
var emerald = MaterialSystem.getMaterialBuilder().setName("Emerald").setColor(12712918).build();

// 魔力钢
var manasteel = MaterialSystem.getMaterialBuilder().setName("Manasteel").setColor(10077439).build();

// 泰拉钢
var terrasteel = MaterialSystem.getMaterialBuilder().setName("Terrasteel").setColor(10014848).build();

// 源质钢
var elvenElementium = MaterialSystem.getMaterialBuilder().setName("ElvenElementium").setColor(10567285).build();

// 晶素
var crystaltine = MaterialSystem.getMaterialBuilder().setName("Crystaltine").setColor(13100788).build();

// 恶魔金属
var demonicMetal = MaterialSystem.getMaterialBuilder().setName("DemonicMetal").setColor(15500160).build();

// 附魔金属
var enchantedMetal = MaterialSystem.getMaterialBuilder().setName("EnchantedMetal").setColor(7841093).build();

// 玛玉灵
var manyullyn = MaterialSystem.getMaterialBuilder().setName("Manyullyn").setColor(16711935).build();

// 强化黑曜石
var refinedObsidian = MaterialSystem.getMaterialBuilder().setName("RefinedObsidian").setColor(5587064).build();

// 精炼铁
var refinedIron = MaterialSystem.getMaterialBuilder().setName("RefinedIron").setColor(16777215).build();

// 天空
var sky_ingot = MaterialSystem.getMaterialBuilder().setName("Sky").setColor(12446206).build();

//�����б�
var metal_list = [
	iron,
	gold,
	lapis,
	redstone,
	diamond,
	emerald,
	manasteel,
	terrasteel,
	elvenElementium,
	crystaltine,
	demonicMetal,
	enchantedMetal,
	manyullyn,
	refinedObsidian,
	refinedIron,
	sky_ingot] as Material[];
//�����б�
var part_names = [
	#��
	"dust",
	#����
	"gear",
	#��
	"plate",
	#��
	"nugget",
	#��
	"rod",
	#���ܰ�
	"dense_plate",
	#����
	"molten",
	#���
	"casing",
	#��
	"beam",
	#��˿
	"bolt",
	#�󵯻�
	"large_spring",
	#Բ
	"round",
	#��
	"ring",
	#����
	"long_rod",
	#块
	"block"
	] as string[];


for i, metal in metal_list {
	metal.registerParts(part_names);
	var poorOreData = metal.registerPart("poor_ore").getData();
	poorOreData.addDataValue("hardness", "5");
	poorOreData.addDataValue("resistance", "30");
	poorOreData.addDataValue("harvestTool", "pickaxe");
	poorOreData.addDataValue("harvestLevel", "3");
}