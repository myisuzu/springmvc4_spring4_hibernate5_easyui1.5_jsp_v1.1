<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/back/common/method.js"></script>
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
				//刷新zTree
				var zTree = $.fn.zTree.getZTreeObj("ztree");
				var pid = $("#pid").combotree("getValue");
				var parentNode = zTree.getNodeByParam("id", pid, null);
				if (parentNode != null) {
					parentNode.isParent = true;
				}
				if (isContains(url, "purview/update")) {
					var oldNode = zTree.getNodeByParam("id", id, null);
					zTree.removeNode(oldNode);
				}
				zTree.reAsyncChildNodes(parentNode, "refresh");
				zTree.expandNode(parentNode, true, true, true);
				//刷新表格
				$("#grid").datagrid("reload");
				$("#grid").datagrid("clearSelections");
				$("#grid").datagrid("clearChecked");
				top.$.messager.show({
					title : "提示",
					msg : "保存成功",
					timeout : 3000
				});
				//刷新左侧菜单栏
			}
		});
		//上级权限JSON数据
		/*
		$('#pid').combotree({    
		    url : "${pageContext.request.contextPath}/system/purview/easyuiTreeJson",
		    valueField: 'id',    
			textField: 'name',
		    method : 'post',
		    lines : false,
		    //panelHeight : 180
		});
		*/
		$('#elementId').combotree({    
		    url : "${pageContext.request.contextPath}/system/element/combotreeJson",
		    method : 'post',
		    lines : false
		});
		
		$("#isMenu1").click(function() {
			$("#tr_folder").removeAttr("style");
			$("#tr_element").css("display", "none");
		});
		$("#isMenu2").click(function() {
			$("#tr_folder").css("display", "none");
			$("#tr_element").removeAttr("style");
		});
	});
</script>

<div class="easyui-layout" fit="true">
	<div region="center" border="false" style="padding:10px; background:#fff; border:1px solid #ccc;">
		<form id="form" method="post">
			<table id="dictTbl" class="table-edit" width="100%" align="center">
				<tr>
					<td>上级权限:</td>
					<td>
						<input style="width:200px;" name="pid" id="pid" class="easyui-combotree"
						data-options="valueField:'id', textField:'name', 
						url:'${pageContext.request.contextPath}/system/purview/easyuiTreeJson'">
					</td>
				</tr>
				<tr>
					<td width="100">权限名称:</td>
					<td>
						<input style="width:200px;" type="text" name="name" id="name" class="easyui-validatebox" required="true">
					</td>
				</tr>
				<tr>
					<td>权限URL:</td>
					<td>
						<input type="text" name="url" id="url" class="easyui-validatebox" style="width:200px;">
					</td>
				</tr>
				<tr>
					<td>权限类型:</td>
					<td>
						<label for="isMenu1"><input value="0" type="radio" id="isMenu1" name="isMenu">菜单</label>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<label for="isMenu2"><input value="1" type="radio" id="isMenu2" name="isMenu" checked>按钮</label>
					</td>
				</tr>
				<tr id="tr_element">
					<td>按钮类别:</td>
					<td>
						<input style="width:200px;" value="" name="elementId" id="elementId" class="easyui-combotree">
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
