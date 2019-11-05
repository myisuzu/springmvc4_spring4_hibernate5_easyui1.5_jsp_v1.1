
//获取zTree对象
function getZtree(treeId) {
	return $.fn.zTree.getZTreeObj(treeId);
}

//获取zTree根节点
function getRootNode(treeId) {
	var zTree = $.fn.zTree.getZTreeObj(treeId);
	return zTree.getNodeByParam("name", "组织机构", null);
}

//获取zTree选中节点id数组
function getSelectedNodes(treeId) {
	var zTreeObj = $.fn.zTree.getZTreeObj(treeId);
	var nodes = zTreeObj.getSelectedNodes();
	return nodes;
}
