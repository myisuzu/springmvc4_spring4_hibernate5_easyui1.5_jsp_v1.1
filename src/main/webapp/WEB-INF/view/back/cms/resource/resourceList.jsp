<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%@ include file="/WEB-INF/view/back/common/common.jspf" %>
	<%@ include file="/WEB-INF/view/back/common/jquery-easyui-1.5.jspf" %>
	<%@ include file="/WEB-INF/view/back/common/jquery-fancybox-2.1.3.jspf" %>
	<script type="text/javascript">
		$(function() {
			$('#pattern').combotree({
				url: '${pageContext.request.contextPath}/system/datadict/combotreeJsonByPcode?code=zyfl',
			    method : 'post',
			    cascadeCheck : true,
			    lines : false,
			    panelHeight : 300,
			    onClick: function(node) {
			    	$('#grid').datagrid({
						url : '${pageContext.request.contextPath}/cms/resource/list?typeId='+node.id
					});
				}
			});
		});
		var toolbar = ${toolbar};
		//添加
		function doAdd() {
			window.location.href = "${pageContext.request.contextPath}/cms/resource/saveUI";
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
				window.location.href = "${pageContext.request.contextPath}/cms/resource/saveUI?id="+id;
			}
		}
		//删除
		function doDelete() {
			commondDelete("${pageContext.request.contextPath}/cms/resource/delete");
		}
		//上移
		function doMoveUp() {
			commonMoveUp("${pageContext.request.contextPath}/cms/resource/move");
		}
		//下移
		function doMoveDown() {
			commonMoveDown("${pageContext.request.contextPath}/cms/resource/move");
		}
		//显示相册图片
		function showImage(fileIdStr) {
			commonShowImage(fileIdStr);
		}
	</script>
</head>

<body class="easyui-layout">

	<div region="north" border="false" split="true" style="height:50px; padding:10px;">
		上课方式：<input style="width:200px;" name="pattern" id="pattern" class="easyui-combotree">
	</div>
	
	<div region="center" split="false" border="false">
		<table id="grid" class="easyui-datagrid" data-options="border:false, fit:true, rownumbers:true, striped:true, 
			url:'${pageContext.request.contextPath}/cms/resource/list', pagination:true, pageSize:8, pageList:[8,30,50,100], toolbar:toolbar, idField:'id',
			singleSelect:false, ctrlSelect:true">
			<thead frozen="true">
				<tr>
					<th data-options="field:'id', checkbox:true"></th>
					<th data-options="field:'name', align:'left', width:240">课程名称</th>
				</tr>
			</thead>
			<thead>
				<tr>
					<th data-options="field:'startDate', align:'left', width:100">开课时间</th>
					<th data-options="field:'duration', align:'left', width:100">课程时长</th>
					<th data-options="field:'type', align:'left', width:100, formatter: function(value,row,index) {
						if (row.type) return row.type.name;
					}">课程类别</th>
					<th data-options="field:'location', align:'left', width:100">上课地点</th>
					<th data-options="field:'imageUrl', align:'center', width:80, formatter: function(value,row,index){
						return '<img width=50 height=50 src=\''+value+'\'>'
					}">小图</th>
					<th data-options="field:'imageId', align:'center', width:100, formatter: function(value,row,index){
						return '<a style=\'text-decoration:none;\' href=\'javascript:void(0);\' onclick=showImage(\''+value+'\')>单击查看</a>'
					}">大图</th>
					<th data-options="field:'videoUrl', align:'center', width:100, formatter: function(value,row,index){
						return '<a target=\'blank\' style=\'text-decoration:none;\' href=\'${pageContext.request.contextPath}/cms/resource/videoView?id='+row.id+'\'>单击播放</a>'
					}">视频播放</th>
				</tr>
			</thead>
		</table>
	</div>
	
</body>

</html>