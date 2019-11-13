<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script type="text/javascript">
	$(function() {
		// 修改密码弹窗取消按钮
		$("#btnCancel").click(function(){
			$("#saveWindow").window("close");
		});
		$("#btnEp").click(function() {
			if ($("#form").form('validate')) {
				$("#form").submit();
				$("#saveWindow").window("close");
			}
		});
		$("#form").form({
			url : url,
			onSubmit : function() {
				return $(this).form('validate');
			},
			success : function(data) {
				$("#grid").datagrid("reload");
				$("#grid").datagrid("clearSelections");
				$("#grid").datagrid("clearChecked");
				top.$.messager.show({
					title : "提示",
					msg : "保存成功",
					timeout : 3000
				});
			}
		});
	});
</script>

<div class="easyui-layout" fit="true">
	<div region="center" border="false" style="padding:10px; background:#fff; border:1px solid #ccc;">
		<form id="form" method="post">
			<table id="dictTbl" class="table-edit" width="100%" align="center">
				<tr>
					<td>年纪:</td>
					<td>
						<select style="width:200px;" class="easyui-combobox" id="grade" name="grade">   
						    <c:forEach begin="2019" end="2030" var="year">
						    	<option value="${year }">${year }</option>
						    </c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td width="100">班级名称:</td>
					<td>
						<input style="width:200px;" type="text" name="name" id="name" class="easyui-validatebox" required="true">
					</td>
				</tr>
			</table>
		</form>
	</div>
	<div region="south" border="false" style="text-align:right; height:30px; line-height:30px;">
        <a id="btnEp" class="easyui-linkbutton" icon="icon-ok" href="javascript:void(0)" >保存</a>
        <a id="btnCancel" class="easyui-linkbutton" icon="icon-cancel" href="javascript:void(0)">关闭</a>
    </div>
</div>
