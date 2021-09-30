#include <bits/srdc++.h>
using namespace std;
string il[9], title, amount;
bool shape;
const int c[3][3][9] = {
	{{-1,-1,-1,-1,0,-1,-1,-1,-1},{0,-1,-1,1,-1,-1,-1,-1,-1},{-1,0,-1,-1,1,-1,-1,2,-1}},
	{{0,1,-1,-1,-1,-1,-1,-1,-1},{0,1,-1,2,3,-1,-1,-1,-1},{0,1,-1,2,3,-1,4,5,-1}},
	{{-1,-1,-1,0,1,2,-1,-1,-1},{0,1,2,3,4,5,-1,-1,-1},{0,1,2,3,4,5,6,7,8}}
};
int xi, yi;
bool beginlog;
map<string, string>mp;
map<string, string>aliases;
map<string, bool>isvar;
/**初始化**/
void initchange() {
	beginlog = false;
	mp.clear();
	mp["oredict"] = "ore";
	aliases.clear();
	/**这儿导入aliases的数据**/
}
void everytimesinit() {
	for (int i = 0; i < 9; ++i) {
		il[i] = "null";
	}
	shape = true;
	isvar.clear();
}
/**输出代码中用了哪些地方的东西**/
string type(string var) {
	if (var[1] == 'o' && var[2] == 'r' && var[3] == 'e')return "crafttweaker.oredict.IOreDictEntry";
	return "crafttweaker.item.IItemStack";
}
void outvar(string var) {
	if (aliases.find(var) != aliases.end() && !isvar[var]) {
		isvar[var] = true;
		cout << "var " << var << " as " << type(aliases[var]) << " = <" << aliases[var] << ">" << endl;
	}
}
/**分割双引号里面的字符串返回**/
string mplater(string x) {
	string y = "", z = "";
	bool c = 0, d = 0, f = 0;
	for (int i = 0; i < x.length(); ++i) {
		if (x[i] == '\"') {
			c ^= 1;
		}
		else if (c) {
			if (x[i] <= 'z' && x[i] >= 'a')d = 1;
			if (x[i] == ',') {
				outvar(z);
				if (d) {
					if (!f)z = "ore:" + z;
					y = y + "|<" + z + ">";
				}
				else y = y + "|" + z;
				d = 0; z = "";
			}
			else if (x[i] == ':') {
				if (mp.find(z) != mp.end()) {
					z = mp[z];
				}
				f = 1;
				z += ':';
			}
			else {
				z += x[i];
			}
		}
	}
	outvar(z);
	if (d) {
		if (!f)z = "ore:" + z;
		y = y + "|<" + z + ">";
	}
	else y = y + "|" + z;
	y.erase(y.begin());
	//cout << y << endl;
	return y;
}
/**保存工作台项目；**/
void saveitems(int k) {
	string a;
	bool isnull;
	char ch;
	int flag = 0;
	for (int i = 0; i < k; ++i) {
		a = "";
		isnull = true;
		while ((ch = getchar()) != '/') {
			if (ch == 'n')isnull = false;
			a += ch;
		}
		if (a.length() < 5) {
			return;
		}
		il[i] = a;
		if (isnull) {
			il[i] = "null";
		}
		else {
			outvar(il[i]);
			il[i] = mplater(il[i]);
		}
	}
}
/**输出结果**/
string choose(int i) {
	int d = c[xi - 1][yi - 1][i];
	if (d == -1)return "null";
	return il[d];
}
void printend() {
	bool flag = false;
	cout << "recipes.remove(" + title + ");" << endl;
	cout << "mods.extendedcrafting.EnderCrafting.addShape";
	if (shape)
	{
		cout << "d(" << title;
	}
	else
	{
		cout << "less(";
	}
	if (isupper(title[0]) || (title[1] == 'o' && title[1] == 'r' && title[1] == 'e'))
	{
		cout << "recipesBase.typeConversion(" << title;
		flag = true;
	}
	else
	{
		cout << title;
	}
	if (amount == "1" || amount.length() == 0 || amount == "") {
	}
	else {
		cout << " * " << amount;
	}
	if (flag)
	{
		cout << ")";
	}
	cout << "," << endl;
	if (shape) {
		cout << "\t[[" << choose(0) << ", " << choose(1) << ", " << choose(2) << "]," << endl;
		cout << "\t [" << choose(3) << ", " << choose(4) << ", " << choose(5) << "]," << endl;
		cout << "\t [" << choose(6) << ", " << choose(7) << ", " << choose(8) << "]" << endl;
	}
	else {
		for (int i = 0; i < 9; ++i)
		{
			if (i % 3 == 0) {
				cout << "\t";
			}
			if (choose(i) == "null")
			{
				cout << endl;
				break;
			}
			if (!i)
			{
				cout << "[";
			}
			else {
				cout << ",";
			}
			cout << choose(i);
			if (i % 3 == 2)
			{
				cout << endl;
			}
		}
	}
	cout << "]);" << endl;
	cout << endl;
}

int main() {
	//freopen("balls.txt", "rb", stdin);
	//freopen("balls.zs", "w+", stdout);
	string x;
	initchange();
	while (cin >> x) {
		if (x == "<crafting>") {
			everytimesinit();
			beginlog = true;
		}
		else if (beginlog) {
			if (x == "</crafting>") {
				beginlog = false;
				printend();
			}
			else if (x == "<grid>" || x == "<shapeless>") {
				if (x == "<shapeless>")shape = false;
				xi = yi = 3;
				saveitems(9);
			}
			else if (x == "<grid") {
				cin >> x;
				x = mplater(x);
				xi = x[5] - '0';
				yi = x[7] - '0';
				saveitems(xi * yi);
			}
			else if (x == "<output") {
				//cout << "#";
				cin >> title >> amount;
				title = mplater(title);
				//cout << title << "#" << amount << endl;
				if (amount.length() >= 6)amount = mplater(amount);
				else amount = "1";
			}
		}
	}
}