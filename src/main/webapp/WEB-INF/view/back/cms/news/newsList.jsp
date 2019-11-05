<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%@ include file="/WEB-INF/view/back/common/common.jspf" %>
	<%@ include file="/WEB-INF/view/back/common/jquery-easyui-1.5.jspf" %>
	<script type="text/javascript">
		$(function() {
			$('#typeId').combotree({
				url: '${pageContext.request.contextPath}/system/datadict/combotreeJsonByPcode?code=xwfl',
			    method : 'post',
			    cascadeCheck : true,
			    lines : false,
			    panelHeight : 300,
			    onClick: function(node) {
			    	$('#grid').datagrid({
						url : '${pageContext.request.contextPath}/cms/news/list?typeId='+node.id
					});
				}
			});
		});
		var toolbar = ${toolbar};
		//添加
		function doAdd() {
			window.location.href = "${pageContext.request.contextPath}/cms/news/saveUI";
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
				window.location.href = "${pageContext.request.contextPath}/cms/news/saveUI?id="+id;
			}
		}
		//删除
		function doDelete() {
			commondDelete("${pageContext.request.contextPath}/cms/news/delete");
		}
		//上移
		function doMoveUp() {
			commonMoveUp("${pageContext.request.contextPath}/cms/news/move");
		}
		//下移
		function doMoveDown() {
			commonMoveDown("${pageContext.request.contextPath}/cms/news/move");
		}
	</script>
</head>

<body class="easyui-layout">

	<div region="north" border="false" split="true" style="height:50px; padding:10px;">
		新闻分类：<input style="width:200px;" name="typeId" id="typeId" class="easyui-combotree">
	</div>
	
	<div region="center" split="false" border="false">
		<table id="grid" class="easyui-datagrid" data-options="border:false, fit:true, rownumbers:true, striped:true, 
			url:'${pageContext.request.contextPath}/cms/news/list', pagination:true, pageSize:100, pageList:[10,30,50,100], toolbar:toolbar, idField:'id',
			singleSelect:false, ctrlSelect:true">
			<thead frozen="true">
				<tr>
					<th data-options="field:'id', checkbox:true">
					<th data-options="field:'title', align:'left', width:600">标题</th>
				</tr>
			</thead>
			<thead>
				<tr>
					<th data-options="field:'type', align:'left', width:100, formatter: function(value,row,index) {
						if (row.type) return row.type.name;
					}">分类</th>
					<th data-options="field:'addDate', align:'left', width:240">发布日期</th>
				</tr>
			</thead>
		</table>
	</div>
	
</body>

</html>