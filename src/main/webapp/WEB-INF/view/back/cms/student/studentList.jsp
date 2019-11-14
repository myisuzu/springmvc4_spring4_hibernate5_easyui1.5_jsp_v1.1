<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>学生管理</title>
	<%@ include file="/WEB-INF/view/back/common/common.jspf" %>
	<%@ include file="/WEB-INF/view/back/common/jquery-easyui-1.5.jspf" %>
	<script type="text/javascript">
		var id = 0;
		var url = "";
		var toolbar = ${toolbar};
		//添加
		function doAdd() {
			url = "${pageContext.request.contextPath}/cms/student/add";
			$("#saveWindow").window("open");
			$("#saveWindow").window("setTitle", "学生添加");
			$("#saveWindow").window("refresh", "${pageContext.request.contextPath}/cms/student/saveUI");
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
				url = "${pageContext.request.contextPath}/cms/student/update?id="+item[0].id;
				$("#saveWindow").window("open");
				$("#saveWindow").window("refresh", "${pageContext.request.contextPath}/cms/student/saveUI");
				$("#saveWindow").window("setTitle", "学生修改");
				setTimeout(function() {
					$("#name").val(item[0].name);
					$('#phone').numberbox('setValue', item[0].phone);
					$(":radio[name='gender'][value=" + item[0].gender + "]").attr("checked", "checked");
					if (item[0].classes.id) {
						$("#classesId").combotree("setValue", item[0].classes.id);
					}
				}, 300);
			}
		}
		//删除
		function doDelete() {
			commondDelete("${pageContext.request.contextPath}/cms/student/delete");
		}
		//上移
		function doMoveUp() {
			commonMoveUp("${pageContext.request.contextPath}/cms/student/move");
		}
		//下移
		function doMoveDown() {
			commonMoveDown("${pageContext.request.contextPath}/cms/student/move");
		}
	</script>
</head>

<body class="easyui-layout">
	
	<div region="center" split="false" border="false">
		<table id="grid" class="easyui-datagrid" data-options="border:false, fit:true, rownumbers:true, striped:true, 
			url:'${pageContext.request.contextPath}/cms/student/list', pagination:true, pageSize:100, pageList:[10,30,50,100], toolbar:toolbar, idField:'id',
			singleSelect:false, ctrlSelect:true">
			<thead frozen="true">
				<tr>
					<th data-options="field:'id', checkbox:true">
					<th data-options="field:'name', align:'left', width:200">学生名称</th>
				</tr>
			</thead>
			<thead frozen="false">
				<tr>
					<th data-options="field:'phone', align:'left', width:100">手机号</th>
					<th data-options="field:'gender', align:'left', width:100, formatter: function(value,row,index) {
						return row.gender ? '男' : '女';
					}">性别</th>
					<th data-options="field:'classes', align:'left', width:240, formatter: function(value,row,index) {
						if (row.classes) return row.classes.grade+row.classes.name;
					}">班级</th>
				</tr>
			</thead>
		</table>		
	</div>
	
	<div id="saveWindow" class="easyui-window" style="width:440px;height:240px;"
       data-options="modal:true, closed:true, collapsible:false, minimizable:false, maximizable:false, icon:'icon-save'">
   	</div>
   	
</body>
</html>