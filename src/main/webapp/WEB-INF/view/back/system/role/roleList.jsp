<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>按钮管理</title>
	<%@ include file="/WEB-INF/view/back/common/common.jspf" %>
	<%@ include file="/WEB-INF/view/back/common/jquery-easyui-1.5.jspf" %>
	<%@ include file="/WEB-INF/view/back/common/jquery-ztree-3.5.15.jspf" %>	
	<script type="text/javascript">
		var id = 0;
		var url = "";
		var toolbar = ${toolbar};
		//添加
		function doAdd() {
			url = "${pageContext.request.contextPath}/system/role/add";
			$("#saveWindow").window("open");
			$("#saveWindow").window("setTitle", "按钮添加");
			$("#saveWindow").window("refresh", "${pageContext.request.contextPath}/system/role/saveUI");
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
				url = "${pageContext.request.contextPath}/system/role/update?id="+item[0].id;
				$("#saveWindow").window("open");
				$("#saveWindow").window("refresh", "${pageContext.request.contextPath}/system/role/saveUI");
				$("#saveWindow").window("setTitle", "按钮修改");
				setTimeout(function() {
					$("#name").val(item[0].name);
				}, 300);
			}
		}
		//删除
		function doDelete() {
			commondDelete("${pageContext.request.contextPath}/system/role/delete");
		}
		//上移
		function doMoveUp() {
			commonMoveUp("${pageContext.request.contextPath}/system/role/move");
		}
		//下移
		function doMoveDown() {
			commonMoveDown("${pageContext.request.contextPath}/system/role/move");
		}
		//分配权限
		function doGrantPurview() {
			var items = $('#grid').datagrid('getSelections');
			if (items.length == 0) {
				$.messager.alert("提示", "请选择角色");
			} else if (items.length > 1) {
				$.messager.alert("提示", "一次只能选择一个角色");
			} else {
				id = items[0].id;
				url = "${pageContext.request.contextPath}/system/role/grantPurview?id="+items[0].id;
				$("#saveWindow").window("open");
				$("#saveWindow").window("refresh", "${pageContext.request.contextPath}/system/role/grantPurviewUI");
				$("#saveWindow").window("setTitle", "为角色分配权限");
			}
		}
	</script>
</head>

<body class="easyui-layout">
	
	<div region="center" split="false" border="false">
		<table id="grid" class="easyui-datagrid" data-options="border:false, fit:true, rownumbers:true, striped:true, 
			url:'${pageContext.request.contextPath}/system/role/list', pagination:true, pageSize:100, pageList:[10,30,50,100], toolbar:toolbar, idField:'id',
			singleSelect:false, ctrlSelect:true">
			<thead frozen="true">
				<tr>
					<th data-options="field:'id', checkbox:true"></th>
				</tr>
			</thead>
			<thead>
				<tr>
					<th data-options="field:'name', align:'left', width:200">角色名称</th>
					<th data-options="field:'purviews', width:400, align:'left'">关联权限</th>
				</tr>
			</thead>
		</table>		
	</div>
	
	<div id="saveWindow" class="easyui-window" style="width:440px;height:220px;"
       data-options="modal:true, closed:true, collapsible:false, minimizable:false, maximizable:false, icon:'icon-save'">
   	</div>
   	
</body>
</html>