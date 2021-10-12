##===============================================
##          [Author]:   Anidlebrain
##          [since]:    magic_higanbana
##          [Info]:     工具提示
##===============================================
import crafttweaker.item.IItemStack;
import scripts.AnildebrainUtils.messageUtils.getMessageKey;
#priority 2000


//碗
<minecraft:bowl>.addTooltip(getMessageKey("tooltip.minecraft:bowl"));

//生存者钓竿
<skyresources:survivalistfishingrod>.addTooltip(getMessageKey("tooltip.skyresources:survivalistfishingrod"));

//知识传承
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:knowledge_inheritance"})
.addTooltip(getMessageKey("tooltip.modularmachinery:knowledge_inheritance.1") ~ getMessageKey("tooltip.modularmachinery:knowledge_inheritance.2"));
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:knowledge_inheritance"})
.addTooltip(getMessageKey("tooltip.modularmachinery:knowledge_inheritance.3"));
