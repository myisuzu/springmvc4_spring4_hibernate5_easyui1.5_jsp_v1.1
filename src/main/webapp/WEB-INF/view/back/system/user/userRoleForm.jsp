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
				$("#form1").submit();
				$("#saveWindow").window("close");
				/*
				$.messager.confirm("确认", "您确认要保存记录吗？", function(r) {
				    if (r) {
				    }
				});
				*/
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
				
				var data = eval('(' + data + ')');  
				if (data.code == 200) {
					top.$.messager.show({title:"提示", msg:"保存成功", timeout:3000});
				} else if (data.code == 500) {
					top.$.messager.show({title:"提示", msg:"操作失败", timeout:3000});
				}
			}
		});
		//加载角色
		$('#roleId').combotree({    
		    url : "${pageContext.request.contextPath}/system/role/combotreeJson",
		    method: 'post',
		    lines: false,
		    required: true,    
		    multiple: true  
		});
	});
</script>

<div class="easyui-layout" fit="true">
	<div region="center" border="false" style="padding:10px; background:#fff; border:1px solid #ccc;">
		<form id="form1" method="post">
			<table id="tb1" class="table-edit" width="100%" align="center">
				<tr>
					<td width="100">角色:</td>
					<td>
						<input style="width:250px;" name="roleId" id="roleId" class="easyui-combotree">
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
