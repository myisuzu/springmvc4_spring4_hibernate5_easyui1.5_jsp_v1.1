<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>留言反馈管理</title>
	<%@ include file="/WEB-INF/view/back/common/common.jspf" %>
	<%@ include file="/WEB-INF/view/back/common/jquery-easyui-1.5.jspf" %>
	<script type="text/javascript">
		var toolbar = ${toolbar};
		//删除
		function doDelete() {
			commondDelete("${pageContext.request.contextPath}/system/feedback/delete");
		}
	</script>
</head>

<body class="easyui-layout">
	
	<div region="center" split="false" border="false">
		<table id="grid" class="easyui-datagrid" data-options="border:false, fit:true, rownumbers:true, striped:true, 
			url:'${pageContext.request.contextPath}/system/feedback/list', pagination:true, pageSize:100, pageList:[10,30,50,100], toolbar:toolbar, idField:'id',
			singleSelect:false, ctrlSelect:true">
			<thead frozen="true">
				<tr>
					<th data-options="field:'id', checkbox:true">
					<th data-options="field:'user', align:'left', width:100, formatter: function(value,row,index) {
						if (row.user) return row.user.truename;
					}">反馈人</th>
				</tr>
			</thead>
			<thead>
				<tr>
					<th data-options="field:'time', align:'left', width:140">反馈时间</th>
					<th data-options="field:'content', align:'left', width:400">反馈内容</th>
				</tr>
			</thead>
		</table>		
	</div>
   	
</body>
</html>