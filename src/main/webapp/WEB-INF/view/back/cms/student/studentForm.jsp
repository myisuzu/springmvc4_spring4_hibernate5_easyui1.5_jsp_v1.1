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
				top.$.messager.show({title:"提示", msg:"保存成功", timeout:3000});
			}
		});
		
		$('#classesId').combotree({    
		    url : "${pageContext.request.contextPath}/cms/classes/combotreeJson",
		    method : 'post',
		    lines : false
		});
	});
</script>

<div class="easyui-layout" fit="true">
	<div region="center" border="false" style="padding:10px; background:#fff; border:1px solid #ccc;">
		<form id="form" method="post">
			<table id="dictTbl" class="table-edit" width="100%" align="center">
				<tr>
					<td>所属班级:</td>
					<td>
						<input style="width:200px;" value="" name="classes.id" id="classesId" class="easyui-combotree" required>
					</td>
				</tr>
				<tr>
					<td width="100">姓名:</td>
					<td>
						<input style="width:196px;" type="text" name="name" id="name" class="easyui-validatebox" required/>
					</td>
				</tr>
				<tr>
					<td width="100">手机号:</td>
					<td>
						<input style="width:204px;" type="text" name="phone" id="phone" class="easyui-numberbox" data-options="max:19999999999, min:100000000, precision:0" required/> 
					</td>
				</tr>
				<tr>
					<td>性别:</td>
					<td>
						<label for="boy"><input value="true" type="radio" id="boy" name="gender">男</label>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<label for="girl"><input value="false" type="radio" id="girl" name="gender" checked>女</label>
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
