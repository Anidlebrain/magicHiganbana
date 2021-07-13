##################################################
##          [Author]:   Anidlebrain             ##
##          [License]:  CC BY-NC-SA 4.0         ##
##          [Info]:     JEI 物品隐藏并移除配方   ##
##################################################

#priority 2500
import crafttweaker.item.IItemStack;
import crafttweaker.mods.IMod;

import scripts.AnildebrainUtils.ItemHelper.itemHelper;
//  by Anidlebrain

val removeJEI = [
				# 删除原因：
				# 引起整合包崩溃
				
				# 实用设备手册
				# 引起整合包崩溃
				<extrautils2:book>,
				
				# 万能溶剂之经
				# 配置文件里删除
				//<xreliquary:alkahestry_tome:1001>,
				
				
				# 删除原因：
				# mod材质缺失
				
				# 门
				<twilightforest:twilight_oak_door>,
				<twilightforest:canopy_door>,
				<twilightforest:mangrove_door>,
				<twilightforest:dark_door>,
				<twilightforest:time_door>,
				<twilightforest:trans_door>,
				<twilightforest:mine_door>,
				<twilightforest:sort_door>
			] as IItemStack[];
			
for item in removeJEI {
    itemHelper.removeItem(item);
}


//end file by Anidlebrain