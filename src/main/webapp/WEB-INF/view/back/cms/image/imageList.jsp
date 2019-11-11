<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>首页滚动图片管理</title>
	<%@ include file="/WEB-INF/view/back/common/common.jspf" %>
	<%@ include file="/WEB-INF/view/back/common/jquery-easyui-1.5.jspf" %>
	<%--
	<%@ include file="/WEB-INF/view/back/common/jquery-fancybox-2.1.3.jspf" %>
	 --%>
	<style type="text/css">
		a {
			text-decoration: none;
		}
	</style>
	<script type="text/javascript">
		var toolbar = ${toolbar};
		//添加
		function doAdd() {
			window.location.href = "${pageContext.request.contextPath}/cms/image/saveUI";
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
				window.location.href = "${pageContext.request.contextPath}/cms/image/saveUI?id="+id;
			}
		}
		//删除
		function doDelete() {
			commondDelete("${pageContext.request.contextPath}/cms/image/delete");
		}
		//显示相册图片
		function showImage(fileIdStr) {
			commonShowImage(fileIdStr);
		}
	</script>
</head>

<body class="easyui-layout">
	
	<div region="center" split="false" border="false">
		<table id="grid" class="easyui-datagrid" data-options="border:false, fit:true, rownumbers:true, striped:true, 
			url:'${pageContext.request.contextPath}/cms/image/list', pagination:true, pageSize:100, pageList:[10,30,50,100], toolbar:toolbar, idField:'id',
			singleSelect:false, ctrlSelect:true">
			<thead frozen="true">
				<tr>
					<th data-options="field:'id', checkbox:true">
				</tr>
			</thead>
			<thead>
				<tr>
					<th data-options="field:'imageUrl', align:'left', width:200, formatter: function(value,row,index){
						return '<img width=50 height=50 src=\''+value+'\'>'
					}">小图</th>
					<th data-options="field:'imageId', align:'left', width:200, formatter: function(value,row,index){
						return '<a style=\'text-decoration:none;\' href=\'javascript:void(0);\' onclick=showImage(\''+value+'\')>单击查看</a>'
					}">大图</th>
				</tr>
			</thead>
		</table>
	</div>
	
</body>

</html>