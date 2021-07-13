#priority 4000
#norun
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
// �
var lithium = MaterialSystem.getMaterialBuilder().setName("Lithium").setColor(1930303).build();

// ��
var beryllium = MaterialSystem.getMaterialBuilder().setName("Beryllium").setColor(8884900).build();

// ��
var boron = MaterialSystem.getMaterialBuilder().setName("Boron").setColor(11052721).build();

// ��
var sodium = MaterialSystem.getMaterialBuilder().setName("Sodium").setColor(13486256).build();

// þ
var magnesium = MaterialSystem.getMaterialBuilder().setName("Magnesium").setColor(11239549).build();

// ��
var aluminum = MaterialSystem.getMaterialBuilder().setName("Aluminum").setColor(11882803).build();

// ��
var silicon = MaterialSystem.getMaterialBuilder().setName("Silicon").setColor(8356697).build();

// ��
var potassium = MaterialSystem.getMaterialBuilder().setName("Potassium").setColor(9531206).build();

// ��
var calcium = MaterialSystem.getMaterialBuilder().setName("Calcium").setColor(10393744).build();

// ��
var scandium = MaterialSystem.getMaterialBuilder().setName("Scandium").setColor(12172105).build();

// ��
var titanium = MaterialSystem.getMaterialBuilder().setName("Titanium").setColor(4832084).build();

// ��
var vanadium = MaterialSystem.getMaterialBuilder().setName("Vanadium").setColor(13092056).build();

// ��
var chromium = MaterialSystem.getMaterialBuilder().setName("Chromium").setColor(14079952).build();

// ��
var manganese = MaterialSystem.getMaterialBuilder().setName("Manganese").setColor(13812952).build();

// ��
var cobalt = MaterialSystem.getMaterialBuilder().setName("Cobalt").setColor(808081).build();

// ��
var nickel = MaterialSystem.getMaterialBuilder().setName("Nickel").setColor(9532279).build();

// ͭ
var copper = MaterialSystem.getMaterialBuilder().setName("Copper").setColor(12284182).build();

// п
var zinc = MaterialSystem.getMaterialBuilder().setName("Zinc").setColor(9146471).build();

// ��
var gallium = MaterialSystem.getMaterialBuilder().setName("Gallium").setColor(5836580).build();

// ��
var germanium = MaterialSystem.getMaterialBuilder().setName("Germanium").setColor(10928093).build();

// ��
var arsenic = MaterialSystem.getMaterialBuilder().setName("Arsenic").setColor(9876892).build();

// ��
var selenium = MaterialSystem.getMaterialBuilder().setName("Selenium").setColor(11179701).build();

// �
var rubidium = MaterialSystem.getMaterialBuilder().setName("Rubidium").setColor(732445).build();

// ��
var strontium = MaterialSystem.getMaterialBuilder().setName("Strontium").setColor(9912594).build();

// ��
var yttrium = MaterialSystem.getMaterialBuilder().setName("Yttrium").setColor(9929490).build();

// �
var zirconium = MaterialSystem.getMaterialBuilder().setName("Zirconium").setColor(11443592).build();

// ��
var niobium = MaterialSystem.getMaterialBuilder().setName("Niobium").setColor(8424157).build();

// ��
var molybdenum = MaterialSystem.getMaterialBuilder().setName("Molybdenum").setColor(9339025).build();

// �
var technetium = MaterialSystem.getMaterialBuilder().setName("Technetium").setColor(3439405).build();

// ��
var ruthenium = MaterialSystem.getMaterialBuilder().setName("Ruthenium").setColor(14538911).build();

// ��
var rhodium = MaterialSystem.getMaterialBuilder().setName("Rhodium").setColor(12255291).build();

// ��
var palladium = MaterialSystem.getMaterialBuilder().setName("Palladium").setColor(47996).build();

// ��
var silver = MaterialSystem.getMaterialBuilder().setName("Silver").setColor(10919831).build();

// ��
var cadmium = MaterialSystem.getMaterialBuilder().setName("Cadmium").setColor(7695444).build();

// ��
var indium = MaterialSystem.getMaterialBuilder().setName("Indium").setColor(11584716).build();

// ��
var tin = MaterialSystem.getMaterialBuilder().setName("Tin").setColor(11582411).build();

// ��
var antimony = MaterialSystem.getMaterialBuilder().setName("Antimony").setColor(9347465).build();

// ��
var tellurium = MaterialSystem.getMaterialBuilder().setName("Tellurium").setColor(12283136).build();

// �
var cesium = MaterialSystem.getMaterialBuilder().setName("Cesium").setColor(14464384).build();

// ��
var barium = MaterialSystem.getMaterialBuilder().setName("Barium").setColor(41347).build();

// ��
var lanthanum = MaterialSystem.getMaterialBuilder().setName("Lanthanum").setColor(12967389).build();

// ��
var cerium = MaterialSystem.getMaterialBuilder().setName("Cerium").setColor(12303003).build();

// ��
var praseodymium = MaterialSystem.getMaterialBuilder().setName("Praseodymium").setColor(9986048).build();

// ��
var neodymium = MaterialSystem.getMaterialBuilder().setName("Neodymium").setColor(1840392).build();

// ��
var promethium = MaterialSystem.getMaterialBuilder().setName("Promethium").setColor(5079130).build();

// ��
var samarium = MaterialSystem.getMaterialBuilder().setName("Samarium").setColor(10197403).build();

// ��
var europium = MaterialSystem.getMaterialBuilder().setName("Europium").setColor(1350433).build();

// ��
var gadolinium = MaterialSystem.getMaterialBuilder().setName("Gadolinium").setColor(1284128).build();

// �
var terbium = MaterialSystem.getMaterialBuilder().setName("Terbium").setColor(5842070).build();

// ��
var dysprosium = MaterialSystem.getMaterialBuilder().setName("Dysprosium").setColor(138069).build();

// ��
var holmium = MaterialSystem.getMaterialBuilder().setName("Holmium").setColor(3539105).build();

// ��
var erbium = MaterialSystem.getMaterialBuilder().setName("Erbium").setColor(9886868).build();

// ��
var thulium = MaterialSystem.getMaterialBuilder().setName("Thulium").setColor(9346462).build();

// ��
var ytterbium = MaterialSystem.getMaterialBuilder().setName("Ytterbium").setColor(11305859).build();

// ��
var lutetium = MaterialSystem.getMaterialBuilder().setName("Lutetium").setColor(12269729).build();

// ��
var hafnium = MaterialSystem.getMaterialBuilder().setName("Hafnium").setColor(8388769).build();

// ��
var tantalum = MaterialSystem.getMaterialBuilder().setName("Tantalum").setColor(10990760).build();

// ��
var tungsten = MaterialSystem.getMaterialBuilder().setName("Tungsten").setColor(11317171).build();

// �
var rhenium = MaterialSystem.getMaterialBuilder().setName("Rhenium").setColor(12305306).build();

// �
var osmium = MaterialSystem.getMaterialBuilder().setName("Osmium").setColor(10858431).build();

// ҿ
var iridium = MaterialSystem.getMaterialBuilder().setName("Iridium").setColor(10400175).build();

// ��
var platinum = MaterialSystem.getMaterialBuilder().setName("Platinum").setColor(5543080).build();

// ��
var thallium = MaterialSystem.getMaterialBuilder().setName("Thallium").setColor(10916489).build();

// Ǧ
var lead = MaterialSystem.getMaterialBuilder().setName("Lead").setColor(12890567).build();

// ��
var bismuth = MaterialSystem.getMaterialBuilder().setName("Bismuth").setColor(12156189).build();

// ��
var polonium = MaterialSystem.getMaterialBuilder().setName("Polonium").setColor(6635582).build();

// ��
var astatine = MaterialSystem.getMaterialBuilder().setName("Astatine").setColor(5791388).build();

// ��
var francium = MaterialSystem.getMaterialBuilder().setName("Francium").setColor(3888273).build();

// ��
var radium = MaterialSystem.getMaterialBuilder().setName("Radium").setColor(12092319).build();

// �
var actinium = MaterialSystem.getMaterialBuilder().setName("Actinium").setColor(689514).build();

// ��
var thorium = MaterialSystem.getMaterialBuilder().setName("Thorium").setColor(9739419).build();

// ��
var protactinium = MaterialSystem.getMaterialBuilder().setName("Protactinium").setColor(9874177).build();

// ��
var uranium = MaterialSystem.getMaterialBuilder().setName("Uranium").setColor(10204549).build();

// ��
var neptunium = MaterialSystem.getMaterialBuilder().setName("Neptunium").setColor(9144250).build();

// ��
var plutonium = MaterialSystem.getMaterialBuilder().setName("Plutonium").setColor(13487564).build();

// ��
var americium = MaterialSystem.getMaterialBuilder().setName("Americium").setColor(14134683).build();

// �
var curium = MaterialSystem.getMaterialBuilder().setName("Curium").setColor(13805494).build();

// ��
var berkelium = MaterialSystem.getMaterialBuilder().setName("Berkelium").setColor(9476242).build();

// �
var californium = MaterialSystem.getMaterialBuilder().setName("Californium").setColor(12632710).build();

// ��
var einsteinium = MaterialSystem.getMaterialBuilder().setName("Einsteinium").setColor(13028771).build();

// ��
var fermium = MaterialSystem.getMaterialBuilder().setName("Fermium").setColor(3581501).build();

// ��
var mendelevium = MaterialSystem.getMaterialBuilder().setName("Mendelevium").setColor(12632283).build();

// �
var nobelium = MaterialSystem.getMaterialBuilder().setName("Nobelium").setColor(10653843).build();

// �
var lawrencium = MaterialSystem.getMaterialBuilder().setName("Lawrencium").setColor(13602977).build();

// �
var rutherfordium = MaterialSystem.getMaterialBuilder().setName("Rutherfordium").setColor(14194312).build();

// ��ͭ
var bronze = MaterialSystem.getMaterialBuilder().setName("Bronze").setColor(14601110).build();

// �����
var electrum = MaterialSystem.getMaterialBuilder().setName("Electrum").setColor(15720873).build();

// ��
var steel = MaterialSystem.getMaterialBuilder().setName("Steel").setColor(9276813).build();

//�����б�
var metal_list = [
	lithium,
	beryllium,
	boron,
	sodium,
	magnesium,
	aluminum,
	silicon,
	potassium,
	calcium,
	scandium,
	titanium,
	vanadium,
	chromium,
	manganese,
	cobalt,
	nickel,
	copper,
	zinc,
	gallium,
	germanium,
	arsenic,
	selenium,
	rubidium,
	strontium,
	yttrium,
	zirconium,
	niobium,
	molybdenum,
	technetium,
	ruthenium,
	rhodium,
	palladium,
	silver,
	cadmium,
	indium,
	tin,
	antimony,
	tellurium,
	cesium,
	barium,
	lanthanum,
	cerium,
	praseodymium,
	neodymium,
	promethium,
	samarium,
	europium,
	gadolinium,
	terbium,
	dysprosium,
	holmium,
	erbium,
	thulium,
	ytterbium,
	lutetium,
	hafnium,
	tantalum,
	tungsten,
	rhenium,
	osmium,
	iridium,
	platinum,
	thallium,
	lead,
	bismuth,
	polonium,
	astatine,
	francium,
	radium,
	actinium,
	thorium,
	protactinium,
	uranium,
	neptunium,
	plutonium,
	americium,
	curium,
	berkelium,
	californium,
	einsteinium,
	fermium,
	mendelevium,
	nobelium,
	lawrencium,
	rutherfordium,
	bronze,
	electrum,
	steel] as Material[];
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
	"ingot",
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
	var blockData = metal.registerPart("block").getData();
	blockData.addDataValue("hardness", "5");
	blockData.addDataValue("resistance", "30");
	blockData.addDataValue("harvestTool", "pickaxe");
	blockData.addDataValue("harvestLevel", "2");
	
	var oreData = metal.registerPart("ore").getData();
	oreData.addDataValue("hardness", "5");
	oreData.addDataValue("resistance", "30");
	oreData.addDataValue("harvestTool", "pickaxe");
	oreData.addDataValue("harvestLevel", "3");
	
	var denseOreData = metal.registerPart("dense_ore").getData();
	denseOreData.addDataValue("hardness", "5");
	denseOreData.addDataValue("resistance", "30");
	denseOreData.addDataValue("harvestTool", "pickaxe");
	denseOreData.addDataValue("harvestLevel", "3");
	
	var poorOreData = metal.registerPart("poor_ore").getData();
	poorOreData.addDataValue("hardness", "5");
	poorOreData.addDataValue("resistance", "30");
	poorOreData.addDataValue("harvestTool", "pickaxe");
	poorOreData.addDataValue("harvestLevel", "3");
	
}