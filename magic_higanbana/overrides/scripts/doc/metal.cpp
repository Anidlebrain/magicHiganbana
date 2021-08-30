#include <bits/stdc++.h>
using namespace std;
void printfBegin()
{
	cout << "#priority 4000" << endl;
	cout << "#loader contenttweaker" << endl;
	cout << "import mods.contenttweaker.VanillaFactory;" << endl;
	cout << "import mods.contenttweaker.Item;" << endl;
	cout << "import mods.contenttweaker.IItemRightClick;" << endl;
	cout << "import mods.contenttweaker.Commands;" << endl;
	cout << "import mods.contenttweaker.Fluid;" << endl;
	cout << "import mods.contenttweaker.Color;" << endl;
	cout << "import mods.contenttweaker.MaterialSystem;" << endl;
	cout << "import mods.contenttweaker.Material;" << endl;
	cout << endl;
}
void pringtfEnd()
{
	cout << endl;
	cout << "for i, metal in metal_list {" << endl;
	cout << "\tmetal.registerParts(part_names);" << endl;
	cout << "\tvar poorOreData = metal.registerPart(\"poor_ore\").getData();" << endl;
	cout << "\tpoorOreData.addDataValue(\"hardness\", \"5\");" << endl;
	cout << "\tpoorOreData.addDataValue(\"resistance\", \"30\");" << endl;
	cout << "\tpoorOreData.addDataValue(\"harvestTool\", \"pickaxe\");" << endl;
	cout << "\tpoorOreData.addDataValue(\"harvestLevel\", \"3\");" << endl;
	cout << "\t" << endl;
	
	cout << "}" << endl;
}

	
int main()
{
	freopen("metal.txt","r",stdin); 
	freopen("../ContentTweaker/metal.zs","w",stdout); 
	//RGB
	//FILE *fp = fre
	string ingot, ingotName, name;
	int colorR, colorG, colorB, colorNum;
	printfBegin();
	cout << "//材料注册" << endl;
	vector<string> veingot, vename;
	while(cin >> ingot >> ingotName >> colorR >> colorG >> colorB)
	{
		//var nd = MaterialSystem.getMaterialBuilder().setName("Neodymium").setColor(16761035).build();
		name = ingot;
		if(name[0] >= 'a' && name[0] <= 'z')name[0] += 'A' - 'a';
		colorNum = (colorR << 16) | (colorG << 8) | (colorB);
		cout << "// " << ingotName << endl;
		cout << "var " << ingot << " = MaterialSystem.getMaterialBuilder().setName(\""
			 << name << "\").setColor(" << colorNum << ").build();" << endl;
		cout << endl;
		veingot.push_back(ingot);
		vename.push_back(ingotName);
	}
	cout << "//材料列表" << endl;
	cout << "var metal_list = [" << endl;
	for(int i = 0; i < veingot.size(); ++i)
	{
		if(i!=veingot.size() - 1)
		{
			cout << "\t" << veingot[i] << "," << endl;
		}
		else
		{
			cout << "\t" << veingot[i] << "] as Material[];" << endl;
		}
	}
	
	cout << "//类型列表" << endl;
	cout << "var part_names = [" << endl;
	cout << "\t" << "#粉" << endl;
	cout << "\t" << "\"dust\"" << "," << endl;
	cout << "\t" << "#齿轮" << endl;
	cout << "\t" << "\"gear\"" << "," << endl;
	cout << "\t" << "#板" << endl;
	cout << "\t" << "\"plate\"" << "," << endl;
	cout << "\t" << "#粒" << endl;
	cout << "\t" << "\"nugget\"" << "," << endl;
	cout << "\t" << "#棒" << endl;
	cout << "\t" << "\"rod\"" << "," << endl;
	cout << "\t" << "#致密板" << endl;
	cout << "\t" << "\"dense_plate\"" << "," << endl;
	cout << "\t" << "#熔融" << endl;
	cout << "\t" << "\"molten\"" << "," << endl;
	cout << "\t" << "#外壳" << endl;
	cout << "\t" << "\"casing\"" << "," << endl;
	cout << "\t" << "#梁" << endl;
	cout << "\t" << "\"beam\"" << "," << endl;
	cout << "\t" << "#螺丝" << endl;
	cout << "\t" << "\"bolt\"" << "," << endl;
	cout << "\t" << "#大弹簧" << endl;
	cout << "\t" << "\"large_spring\"" << "," << endl;
	cout << "\t" << "#圆" << endl;
	cout << "\t" << "\"round\"" << "," << endl;
	cout << "\t" << "#环" << endl;
	cout << "\t" << "\"ring\"" << "," << endl;
	cout << "\t" << "#长条" << endl;
	cout << "\t" << "\"long_rod\"" << " ] as string[];" << endl;
	cout << endl;
	pringtfEnd();
	cout << endl;
	cout << endl;
	cout << endl;
	for(int i = 0; i < veingot.size(); ++i)
	{
		cout << "base.material.";
		//cout <<veingot[i];
		for(int j=0;j<veingot[i].length();++j)
		{
			if(veingot[i][j]>='A'&&veingot[i][j]<='Z')
			{
				cout << "_" << (char)(veingot[i][j] - 'A' + 'a');
			}
			else
			{
				cout <<veingot[i][j];
			} 
		} 
		cout << "=" << veingot[i] << endl;
	}
	
	cout << endl;
	cout << endl;
	cout << endl;
	for(int i = 0; i < veingot.size(); ++i)
	{
		cout << "base.material.";
		//cout << veingot[i];
		for(int j=0;j<veingot[i].length();++j)
		{
			if(veingot[i][j]>='A'&&veingot[i][j]<='Z')
			{
				cout << (char)(veingot[i][j] - 'A' + 'a');
			}
			else
			{
				cout <<veingot[i][j];
			} 
		}
		cout << "=" << vename[i] << endl;
	}
};