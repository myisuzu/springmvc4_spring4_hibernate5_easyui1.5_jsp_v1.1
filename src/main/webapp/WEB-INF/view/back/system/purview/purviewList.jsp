<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>权限管理</title>
	<%@ include file="/WEB-INF/view/back/common/common.jspf" %>
	<%@ include file="/WEB-INF/view/back/common/jquery-easyui-1.5.jspf" %>
	<%@ include file="/WEB-INF/view/back/common/jquery-ztree-3.5.15.jspf" %>
	<script type="text/javascript">
		$(function() {
			//初始化zTree
			$.ajax({
				url : "${pageContext.request.contextPath}/system/purview/ztreeJson",
				type : 'POST',
				dataType : 'text',
				success : function(data) {
					var zNodes = eval("(" + data + ")");
					tree = $.fn.zTree.init($("#ztree"), setting, zNodes);
				},
				error : function(msg) {
					alert('菜单加载异常!');
				}
			});
		});
		var id = 0;
		var url = "";
		var tree = null;
		var toolbar = ${toolbar};
		// 初始化ztree菜单设置
		var setting = {
			async: {enable:true, url:getChild},
			view: {dblClickExpand:false, showLine:true},
			data: {
				key: {title: "title"},
				simpleData: {enable:true, idKey:"id", pIdKey:"pid"}
			},
			callback: {onRightClick:onRightClick, onClick:onClick}
		};
		//异步加载ztree
		function getChild(treeId, treeNode) {
			if (treeNode == null) {
				return "${pageContext.request.contextPath}/system/purview/ztreeJson";
			} else {
				id = treeNode.id;
				$("#grid").datagrid({
					url : "${pageContext.request.contextPath}/system/purview/list?id="+treeNode.id
				});
				return "${pageContext.request.contextPath}/system/purview/ztreeJson?id="+treeNode.id;
			}
		}
		//单击树节点
		function onClick(e,treeId, treeNode) {
			id = treeNode.id;
			tree.expandNode(treeNode);
			//if (treeNode.isParent == true && treeNode.open == "true") {
			if (treeNode.isParent == true) {
				$("#grid").datagrid({
					url : "${pageContext.request.contextPath}/system/purview/list?id="+treeNode.id
				});
				return;
			}
		}
		//节点右键
		function onRightClick(event, treeId, treeNode) {
			if (treeNode != null && !treeNode.noR) { // 判断点击的是tree节点
				tree.selectNode(treeNode); // 选中tree节点
				$('#mm').menu('show', {
					left : event.pageX,
					top : event.pageY
				});
			}
			$('#mm').menu({
				onClick : function(item) {
					if (item.name == 'add') {
						id = treeNode.id;
						url = "${pageContext.request.contextPath}/system/purview/add";
						$("#saveWindow").window("open");
						$("#saveWindow").window("setTitle", "权限添加");
						$("#saveWindow").window("refresh", "${pageContext.request.contextPath}/system/purview/saveUI");
						setTimeout(function() {
							$("#pid").combotree('setValue', treeNode.id);
						}, 500);
					} else if (item.name == 'upd' && !$('#updNode').attr('disabled')) {
						id = treeNode.id;
						url = "${pageContext.request.contextPath}/system/purview/update?id="+treeNode.id;
						$("#saveWindow").window("open");
						$("#saveWindow").window("setTitle", "权限修改");
						$("#saveWindow").window("refresh", "${pageContext.request.contextPath}/system/purview/saveUI");
						setTimeout(function() {
							$("#name").val(treeNode.name);
							$("#url").val(treeNode.path);
							$(":radio[name='isMenu'][value=" + treeNode.isMenu + "]").attr("checked", "checked");
							$(":radio[name='isFolder'][value=" + treeNode.isMenu + "]").attr("checked", "checked");
							$("#pid").combotree("setValue", treeNode.pid);
							$("#elementId").combotree("setValue", treeNode.elementId);
						}, 500);
					} else if (item.name == 'del' && !$('#delNode').attr('disabled')) {
						if (treeNode.children && treeNode.children.length > 0) {
							$.messager.alert('警告', '不能直接删除父级权限！');
						} else {
							$.messager.confirm('确认','您确认删除'+treeNode.name+'吗？', function(r) {
								if (r) {
									$.ajax({
										url : "${pageContext.request.contextPath}/system/purview/delete?id="+treeNode.id,
										success : function(data) {
											var zTree = $.fn.zTree.getZTreeObj("ztree");
											zTree.removeNode(treeNode);
											$("#grid").datagrid("reload");
										}
									});
							    }
							});
						}
					} else if (item.name == 'ref' && !$('#refreshNode').attr('disabled')) {
						var zTree = $.fn.zTree.getZTreeObj("ztree");
						zTree.reAsyncChildNodes(treeNode, "refresh");
						$("#grid").datagrid("reload");
					}
				}
			});
		}
		//右键空白地方（非ztree地方）
		function openMenu(event) {
			var x = event.pageX;
			var y = event.pageY;
			$("#mm2").menu("show", {
				left : x,
				top : y
			});
			$("#mm2").menu({
				onClick : function() {
					url = "${pageContext.request.contextPath}/system/purview/add";
					$("#saveWindow").window("open");
					$("#saveWindow").window("setTitle", "权限添加");
					$("#saveWindow").window("refresh", "${pageContext.request.contextPath}/system/purview/saveUI");
				}
			});
			return false;
		}
		//添加
		function doAdd() {
			url = "${pageContext.request.contextPath}/system/purview/add";
			$("#saveWindow").contents().find("#name").val("");
			$("#saveWindow").window("open");
			$("#saveWindow").window("setTitle", "权限添加");
			$("#saveWindow").window("refresh", "${pageContext.request.contextPath}/system/purview/saveUI");
			setTimeout(function() {
				$("#pid").combotree('setValue', id);
			}, 500);
		}
		//编辑
		function doUpdate() {
			var item = $('#grid').datagrid('getSelections');
			if (item.length == 0) {
				$.messager.alert("提示", "请选择要修改的行");
			} else if (item.length > 1) {
				$.messager.alert("提示", "一次只能选择一行进行修改");
			} else {
				id = item[0].id;
				url = "${pageContext.request.contextPath}/system/purview/update?id="+item[0].id;
				$("#saveWindow").window("open");
				$("#saveWindow").window("refresh", "${pageContext.request.contextPath}/system/purview/saveUI");
				$("#saveWindow").window("setTitle", "权限修改");
				setTimeout(function() {
					$("#name").val(item[0].name);
					$("#url").val(item[0].url);
					$(":radio[name='isMenu'][value=" + item[0].isMenu + "]").attr("checked", "checked");
					$(":radio[name='isFolder'][value=" + item[0].isFolder + "]").attr("checked", "checked");
					if (item[0].parent) {
						$("#pid").combotree("setValue", item[0].parent.id);
					}
					if (item[0].element) {
						$("#elementId").combotree("setValue", item[0].element.id);
					}
				}, 500);
			}
		}
		//删除
		function doDelete() {
			var items = $('#grid').datagrid('getSelections');
			if (items.length == 0) {
				$.messager.alert('警告','请选择要删除的项');
				return;
			} else {
				$.messager.confirm('确认','您确认要删除记录吗？',function(r) {
				    if (r) {
						var str = "";
						for (var i=0; i<items.length; i++) {
							str += "id=" + items[i].id + "&";
						}
						$.ajax({
							url : "${pageContext.request.contextPath}/system/purview/delete?"+str.substring(0, str.length-1),
							success : function(data) {
								var zTree = $.fn.zTree.getZTreeObj("ztree");
								//zTree.reAsyncChildNodes(null, "refresh");
								for (var i=0; i<items.length; i++) {
									var oldNode = zTree.getNodeByParam("name", items[i].name, null);
									zTree.removeNode(oldNode);
								}
								$("#grid").datagrid("reload");
								$("#grid").datagrid("clearSelections");
								$("#grid").datagrid("clearChecked");
							}
						});
				    }
				});
			}
		}
		//通用上移方法
		function doMoveUp() {
			commonMoveUp("${pageContext.request.contextPath}/system/purview/move");
		}
		//通用下移方法
		function doMoveDown() {
			commonMoveDown("${pageContext.request.contextPath}/system/purview/move");
		}
	</script>
</head>

<body class="easyui-layout">

	<div region="west" style="width:220px; overflow:hidden;" split="true" border="false">
		<ul id="ztree" class="ztree"></ul>
		<div id="empty_box" style="width:100%; height:100%" oncontextmenu="return openMenu(event)"></div>
	</div>
	
	<div region="center" split="false" border="false">
		<table id="grid" class="easyui-datagrid" data-options="border:false, fit:true, rownumbers:true, striped:true, 
			url:'${pageContext.request.contextPath}/system/purview/list', pagination:true, pageSize:100, pageList:[10,30,50,100], toolbar:toolbar, idField:'id',
			singleSelect:false, ctrlSelect:true">
			<thead frozen="true">
				<tr>
					<th data-options="field:'id', checkbox:true">
					<th data-options="field:'name', title:'权限名称', width:140, align:'left'">权限名称</th>
				</tr>
			</thead>
			<thead>
				<tr>
					<th data-options="field:'parent', align:'left', width:140, formatter: function(value,row,index) {
						if (row.parent) return row.parent.name;
					}">上级权限</th>
					<th data-options="field:'url', align:'left', width:200">URL</th>
					<th data-options="field:'isMenu', align:'center', width:80, formatter: function(value,row,index) {
						if (row.isMenu == 0) return '菜单权限';
						if (row.isMenu == 1) return '功能权限';
					}">权限类别</th>
					<th data-options="field:'isFolder', align:'center', width:80, formatter: function(value,row,index) {
						if (row.isFolder == 0) return '文件夹';
						if (row.isFolder == 1) return '文件';
					}">文件类别</th>
					<th data-options="field:'element', align:'center', width:80, formatter: function(value,row,index) {
						if (row.element) return row.element.name;
					}">按钮类别</th>
				</tr>
			</thead>
		</table>
	</div>
	
	<div id="mm" class="easyui-menu" style="width:120px;">
		<div id="addNode" data-options="name:'add'">增加</div>
		<div id="updNode" data-options="name:'upd'">修改</div>
		<div id="delNode" data-options="name:'del'">删除</div>
		<div id="refreshNode" data-options="name:'ref'">刷新</div>
	</div>
	
	<div id="mm2" class="easyui-menu" style="width:120px;">
		<div id="addNode2" data-options="name:'add'">增加</div>
	</div>
	
	<div id="saveWindow" class="easyui-window" style="width:500px; height:300px;"
       data-options="modal:true, closed:true, collapsible:false, minimizable:false, maximizable:false, icon:'icon-save'">
   	</div>
</body>
</html>