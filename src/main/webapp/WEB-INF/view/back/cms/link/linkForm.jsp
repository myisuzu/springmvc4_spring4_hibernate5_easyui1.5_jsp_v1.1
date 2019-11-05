<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>首页滚动图片管理</title>
	<%@ include file="/WEB-INF/view/back/common/common.jspf" %>
	<%@ include file="/WEB-INF/view/back/common/jquery-easyui-1.5.jspf" %>
	<script type="text/javascript">
		$(function() {
			$("#back").click(function(){
				window.location.href = "${pageContext.request.contextPath}/cms/link/listUI";
			});
			$("#save").click(function() {
				$.messager.confirm("确认", "您确认要保存记录吗？", function(r) {
				    if (r) {
						if ($("#myForm").form('validate')) {
							$("#myForm").submit();
						}
				    }
				});
			});
			$("#myForm").form({
				url: "${pageContext.request.contextPath}/cms/link/${link == null ? 'add':'update'}",
				onSubmit: function() {
					return $(this).form('validate');
				},
				success: function(data) {
					window.location.href = "${pageContext.request.contextPath}/cms/link/listUI";
					top.$.messager.show({
						title : "提示",
						msg : "保存成功",
						timeout : 3000
					});
				}
			});
		});
	</script>
</head>

<body class="easyui-layout">

	<div region="north" style="height:31px;overflow:hidden;" split="false" border="false">
		<div class="datagrid-toolbar">
			<a id="back" icon="icon-back" href="javascript:history.back(0)" class="easyui-linkbutton" plain="true">返回</a>
			<a id="save" icon="icon-save" href="javascript:void(0)" class="easyui-linkbutton" plain="true">保存</a> 
		</div>
	</div>
	
	<div region="center" style="overflow:auto;padding:5px;" border="false">
		<form id="myForm" method="post">
			<table class="table-edit" width="99%" align="center">
				<tr class="title">
					<td colspan="2">基本信息</td>
				</tr>
				<tr>
					<td width="100">名称:</td>
					<td>
						<input value="${link.name }" style="width:200px;" type="text" name="name" id="name" class="easyui-validatebox" required="true">
					</td>
				</tr>
				<tr>
					<td width="100">地址:</td>
					<td>
						<input value="${link.url }" style="width:200px;" type="text" name="url" id="url" class="easyui-validatebox" required="true">
						<span style="color:red;">格式：http://www.taobao.com</span>
					</td>
				</tr>
			</table>
		</form>
	</div>

</body>

</html>	
