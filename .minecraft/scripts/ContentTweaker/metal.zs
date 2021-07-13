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
// ��
var iron = MaterialSystem.getMaterialBuilder().setName("Iron").setColor(9868950).build();

// ��
var gold = MaterialSystem.getMaterialBuilder().setName("Gold").setColor(15724416).build();

// ���ʯ
var lapis = MaterialSystem.getMaterialBuilder().setName("Lapis").setColor(9545175).build();

// ��ʯ
var redstone = MaterialSystem.getMaterialBuilder().setName("Redstone").setColor(16744576).build();

// ��ʯ
var diamond = MaterialSystem.getMaterialBuilder().setName("Diamond").setColor(9889496).build();

// �̱�ʯ
var emerald = MaterialSystem.getMaterialBuilder().setName("Emerald").setColor(12712918).build();

// ħ����
var manasteel = MaterialSystem.getMaterialBuilder().setName("Manasteel").setColor(10077439).build();

// ̩����
var terrasteel = MaterialSystem.getMaterialBuilder().setName("Terrasteel").setColor(10014848).build();

// Դ�ʸ�
var elvenElementium = MaterialSystem.getMaterialBuilder().setName("ElvenElementium").setColor(10567285).build();

// ����
var crystaltine = MaterialSystem.getMaterialBuilder().setName("Crystaltine").setColor(13100788).build();

// ��ħ����
var demonicMetal = MaterialSystem.getMaterialBuilder().setName("DemonicMetal").setColor(15500160).build();

// ��ħ����
var enchantedMetal = MaterialSystem.getMaterialBuilder().setName("EnchantedMetal").setColor(7841093).build();

// ������
var manyullyn = MaterialSystem.getMaterialBuilder().setName("Manyullyn").setColor(16711935).build();

// ǿ������ʯ
var RefinedObsidian = MaterialSystem.getMaterialBuilder().setName("RefinedObsidian").setColor(5587064).build();

// �
var curium = MaterialSystem.getMaterialBuilder().setName("Curium").setColor(13805494).build();

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
	RefinedObsidian,
	curium] as Material[];

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
	"long_rod" ] as string[];


for i, metal in metal_list {
	metal.registerParts(part_names);
	var poorOreData = metal.registerPart("poor_ore").getData();
	poorOreData.addDataValue("hardness", "5");
	poorOreData.addDataValue("resistance", "30");
	poorOreData.addDataValue("harvestTool", "pickaxe");
	poorOreData.addDataValue("harvestLevel", "3");
	
}

