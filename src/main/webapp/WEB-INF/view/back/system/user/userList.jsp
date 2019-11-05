<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>用户管理</title>
	<%@ include file="/WEB-INF/view/back/common/common.jspf" %>
	<%@ include file="/WEB-INF/view/back/common/jquery-easyui-1.5.jspf" %>
	<script type="text/javascript">
		var id = 0;
		var url = "";
		var toolbar = ${toolbar};
		//添加
		function doAdd() {
			url = "${pageContext.request.contextPath}/system/user/add";
			$("#saveWindow").window("open");
			$("#saveWindow").window("setTitle", "用户添加");
			$("#saveWindow").window("refresh", "${pageContext.request.contextPath}/system/user/saveUI");
		}
		//编辑
		function doUpdate() {
			var items = $('#grid').datagrid('getSelections');
			if (items.length == 0) {
				$.messager.alert("提示", "请选择要修改的行");
			} else if (items.length > 1) {
				$.messager.alert("提示", "一次只能选择一行进行修改");
			} else {
				id = items[0].id;
				url = "${pageContext.request.contextPath}/system/user/update?id="+items[0].id;
				$("#saveWindow").window("open");
				$("#saveWindow").window("refresh", "${pageContext.request.contextPath}/system/user/saveUI");
				$("#saveWindow").window("setTitle", "用户修改");
				setTimeout(function() {
					$("#saveWindow").contents().find("#username").val(items[0].username);
					$("#saveWindow").contents().find("#username").attr("readonly", "readonly");
					$("#saveWindow").contents().find("#truename").val(items[0].truename);
				}, 500);
			}
		}
		//删除
		function doDelete() {
			commondDelete("${pageContext.request.contextPath}/system/user/delete");
		}
		//初始化密码
		function doInitPwd() {
			var items = $('#grid').datagrid('getSelections');
			if (items.length == 0) {
				$.messager.alert('警告','请选择要初始化密码的项');
				return;
			} else {
				var initPwd = "";
				$.ajax({
					url : "${pageContext.request.contextPath}/system/user/pwdInitValue",
					timeout : 3000,
					async : false,
					type : 'POST',
					dataType : 'text',
					success : function(data) {
						initPwd = data;
					}
				});
				$.messager.confirm('确认','确定要初始化用户密码为【'+initPwd+'】吗？',function(r) {
				    if (r) {
						var str = "";
						for (var i=0; i<items.length; i++) {
							str += "id=" + items[i].id + "&";
						}
						$.ajax({
							url : "${pageContext.request.contextPath}/system/user/pwdInit?"+str.substring(0, str.length-1),
							success : function(data) {
								$("#grid").datagrid("reload");
								$("#grid").datagrid("clearSelections");
								$("#grid").datagrid("clearChecked");
								$.messager.show({
									title : "消息提示",
									msg : "初始化密码成功",
									timeout : 3000,
									showType : "slide"
								});
							}
						});
				    }
				});
			}
		}
		//分配角色
		function doGrantRole() {
			var items = $('#grid').datagrid('getSelections');
			if (items.length == 0) {
				$.messager.alert("提示", "请选择用户");
			} else if (items.length > 1) {
				$.messager.alert("提示", "一次只能选择一个用户");
			} else {
				id = items[0].id;
				url = "${pageContext.request.contextPath}/system/user/grantRole?id="+items[0].id;
				$("#saveWindow").window("open");
				$("#saveWindow").window("refresh", "${pageContext.request.contextPath}/system/user/grantRoleUI");
				$("#saveWindow").window("setTitle", "为用户分配角色");
			}
		}
	</script>
</head>

<body class="easyui-layout">
	
	<div region="center" split="false" border="false">
		<table id="grid" class="easyui-datagrid" data-options="border:false, fit:true, rownumbers:true, striped:true, 
			url:'${pageContext.request.contextPath}/system/user/list', pagination:true, pageSize:10, pageList:[10,30,50,100], toolbar:toolbar, idField:'id',
			singleSelect:false, ctrlSelect:true">
			<thead frozen="true">
				<tr>
					<th data-options="field:'id', checkbox:true"></th>
					<th data-options="field:'truename', width:120, align:'left'">姓名</th>
					<th data-options="field:'username', width:120, align:'center'">用户名</th>
					<th data-options="field:'roles', width:400, align:'left'">关联角色</th>
				</tr>
			</thead>
		</table>
	</div>
	
	<div id="saveWindow" class="easyui-window" style="width:480px;height:220px;"
       data-options="modal:true, closed:true, collapsible:false, minimizable:false, maximizable:false, icon:'icon-save'">
   	</div>
   	
	<div id="roleWindow" class="easyui-window" style="width:480px;height:220px;"
       data-options="modal:true, closed:true, collapsible:false, minimizable:false, maximizable:false, icon:'icon-save'">
   	</div>
   	
</body>
</html>