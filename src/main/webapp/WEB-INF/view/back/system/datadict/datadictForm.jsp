<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

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
				$("#grid").treegrid("reload");
				$("#grid").treegrid("clearSelections");
				$("#grid").treegrid("clearChecked");
				top.$.messager.show({title:"提示", msg:"保存成功", timeout:3000});
			}
		});
	});
</script>

<div class="easyui-layout" fit="true">
	<div region="center" border="false" style="padding:10px; background:#fff; border:1px solid #ccc;">
		<form id="form" method="post">
			<table id="dictTbl" class="table-edit" width="100%" align="center">
				<tr id="tr_pid">
					<td>上级:</td>
					<td>
						<input type="text" id="pid" name="parent.id" class="easyui-combotree"
							data-options="url:'${pageContext.request.contextPath}/system/datadict/combotreeJsonByPid', method:'post', width:208, lines:false">
					</td>
				</tr>
				<tr>
					<td width="100">名称:</td>
					<td>
						<input style="width:202px;" type="text" name="name" id="dname" class="easyui-validatebox" required="true">
					</td>
				</tr>
			</table>
		</form>
	</div>
	<div region="south" border="false" style="text-align:right; height:30px; line-height:30px;">
        <a id="btnEp" class="easyui-linkbutton" icon="icon-ok" href="javascript:void(0)">保存</a>
        <a id="btnCancel" class="easyui-linkbutton" icon="icon-cancel" href="javascript:void(0)">关闭</a>
    </div>
</div>
