<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>首页滚动图片管理</title>
	<%@ include file="/WEB-INF/view/back/common/common.jspf" %>
	<%@ include file="/WEB-INF/view/back/common/jquery-easyui-1.5.jspf" %>
	<%@ include file="/WEB-INF/view/back/common/ueditor.jspf" %>
	<script type="text/javascript">
		$(function() {
			//修改新闻时回显分类
			<c:if test="${news != null}">
				$("#typeId").combotree("setValue", ${news.type.id});
			</c:if>
			
			//实例化ueditor
			var ue = UE.getEditor("content", {
				initialFrameWidth: 1000, 	//设置初始化宽度
				initialFrameHeight: 400, 	//设置初始化高度
				toolbars: [ 				//定制工具栏
					['fullscreen',  'source', 'undo', 'redo'],
				    ['bold', 'italic', 'underline', 'fontborder', 'strikethrough', 'superscript', 'subscript', 'removeformat', 'formatmatch', 'autotypeset', 'blockquote', 'pasteplain', '|', 'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist', 'selectall', 'cleardoc', 'simpleupload', 'insertimage']
				],
			});
			
			$("#back").click(function(){
				window.location.href = "${pageContext.request.contextPath}/cms/news/listUI";
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
				url: "${pageContext.request.contextPath}/cms/news/${news == null ? 'add':'update'}",
				onSubmit: function() {
					return $(this).form('validate');
				},
				success: function(data) {
					window.location.href = "${pageContext.request.contextPath}/cms/news/listUI";
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
			<input type="hidden" id="input_hidden_id" name="id" value="${news.id }">
			<table class="table-edit" width="99%" align="center">
				<tr class="title">
					<td colspan="4">基本信息</td>
				</tr>
				<tr>
					<td>新闻分类:</td>
					<td>
						<input type="text" name="type.id" id="typeId" class="easyui-combotree" required="true"
							data-options="url:'${pageContext.request.contextPath}/system/datadict/combotreeJsonByPcode?code=xwfl', method:'post', width:208, lines:false">
					</td>
				</tr>
				<tr>
					<td width="100">新闻标题:</td>
					<td>
						<input value="${news.title}" style="width:400px;" type="text" name="title" id="title" class="easyui-validatebox" required="true">
					</td>
				</tr>
				<tr>
					<td style="vertical-align:middle; text-align:center;">新闻内容:</td>
					<td>
						<textarea id="content" name="content">${news.content}</textarea>
					</td>
				</tr>
			</table>
		</form>
	</div>

</body>

</html>	
