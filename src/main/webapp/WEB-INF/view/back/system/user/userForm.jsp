<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/back/common/method.js"></script>
<script type="text/javascript">
	$(function() {
		// 修改密码弹窗取消按钮
		$("#btnCancel1").click(function(){
			$("#saveWindow").window("close");
		});
		$("#btnEp1").click(function() {
			if ($("#form1").form('validate')) {
				var username = $("#username").val();
				if (isContains(url, "user/add")) {
					$.post(
		            	'${pageContext.request.contextPath}/system/user/usernameVerify', 
		            	{'username':username},
		            	function(data) {
		            		if (data) {
								$("#form1").submit();
								$("#saveWindow").window("close");
							} else {
								$.messager.alert("提示", "用户名已存在");
							}
		            	}
		            )
				} else {
					$.messager.confirm("确认", "您确认要保存记录吗？", function(r) {
					    if (r) {
							$("#form1").submit();
							$("#saveWindow").window("close");
					    }
					});
				}
			}
		});
		$("#form1").form({
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
		<form id="form1" method="post">
			<table id="tb1" class="table-edit" width="100%" align="center">
				<tr>
					<td width="100">用户名:</td>
					<td>
						<input style="width:200px;" type="text" name="username" id="username" class="easyui-validatebox" required="true">
					</td>
				</tr>
				<tr>	
					<td width="100">真实姓名:</td>
					<td>
						<input style="width:200px;" type="text" name="truename" id="truename" class="easyui-validatebox" required="true">
					</td>
				</tr>
			</table>
		</form>
	</div>
	<div region="south" border="false" style="text-align:right; height:30px; line-height:30px;">
        <a id="btnEp1" class="easyui-linkbutton" icon="icon-ok" href="javascript:void(0)" >保存</a>
        <a id="btnCancel1" class="easyui-linkbutton" icon="icon-cancel" href="javascript:void(0)">关闭</a>
    </div>
</div>
