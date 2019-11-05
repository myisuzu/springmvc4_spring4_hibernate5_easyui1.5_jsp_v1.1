<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>课程管理</title>
	<%@ include file="/WEB-INF/view/back/common/common.jspf" %>
	<%@ include file="/WEB-INF/view/back/common/jquery-easyui-1.5.jspf" %>
	<%@ include file="/WEB-INF/view/back/common/jquery-ztree-3.5.15.jspf" %>
	<script type="text/javascript">
		$(function() {
			//初始化zTree
			$.ajax({
				url : "${pageContext.request.contextPath}/cms/course/ztreeJson",
				type : 'POST',
				dataType : 'text',
				success : function(data) {
					var zNodes = eval("(" + data + ")");
					tree = $.fn.zTree.init($("#ztree"), setting, zNodes);
				},
				error : function(msg) {
					alert('菜单加载异常!');
				}
			});
			
		});
		var id = 0;
		var url = "";
		var tree = null;
		var toolbar = ${toolbar};
		// 初始化ztree菜单设置
		var setting = {
			async: {enable:true, url:getChild},
			view: {dblClickExpand:false, showLine:true},
			data: {
				key: {title: "title"},
				simpleData: {enable:true, idKey:"id", pIdKey:"pid"}
			},
			callback: {onRightClick:onRightClick, onClick:onClick}
		};
		//异步加载ztree（单击+-符号）
		function getChild(treeId, treeNode) {
			//获取一级树列表
			if (treeNode == null) {
				return "${pageContext.request.contextPath}/cms/course/ztreeJson";
			} else {
			//获取子树列表	
				id = treeNode.id;
				$("#grid").datagrid({
					url : "${pageContext.request.contextPath}/cms/course/list?id="+treeNode.id
				});
				return "${pageContext.request.contextPath}/cms/course/ztreeJson?id="+treeNode.id;
			}
		}
		//单击树节点（单击文件夹）
		function onClick(e,treeId, treeNode) {
			id = treeNode.id;
			tree.expandNode(treeNode);
			//if (treeNode.isParent == true && treeNode.open == "true") {
			if (treeNode.isParent == true) {
				$("#grid").datagrid({
					url : "${pageContext.request.contextPath}/cms/course/list?id="+treeNode.id
				});
				return;
			}
		}
		function onRightClick() {
			return;
		}
		//添加
		function doAdd() {
			window.location.href = "${pageContext.request.contextPath}/cms/course/saveUI";
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
				window.location.href = "${pageContext.request.contextPath}/cms/course/saveUI?id="+id;
			}
		}
		//删除
		function doDelete() {
			commondDelete("${pageContext.request.contextPath}/cms/course/delete");
		}
		//上移
		function doMoveUp() {
			commonMoveUp("${pageContext.request.contextPath}/cms/course/move");
		}
		//下移
		function doMoveDown() {
			commonMoveDown("${pageContext.request.contextPath}/cms/course/move");
		}
		//显示相册图片
		function showImage(fileIdStr) {
			commonShowImage(fileIdStr);
		}
	</script>
</head>

<body class="easyui-layout">

	<div region="west" style="width:220px; overflow:hidden;" split="true" border="false">
		<ul id="ztree" class="ztree"></ul>
	</div>
	
	<div region="center" split="false" border="false">
		<table id="grid" class="easyui-datagrid" data-options="border:false, fit:true, rownumbers:true, striped:true, 
			url:'${pageContext.request.contextPath}/cms/course/list', pagination:true, pageSize:100, pageList:[10,30,50,100], toolbar:toolbar, idField:'id',
			singleSelect:false, ctrlSelect:true">
			<thead frozen="true">
				<tr>
					<th data-options="field:'id', checkbox:true">
					<th data-options="field:'name', title:'课程名称', width:400, align:'left'">课程名称</th>
				</tr>
			</thead>
			<thead>
				<tr>
					<th data-options="field:'parent', align:'left', width:140, formatter: function(value,row,index) {
						if (row.parent) return row.parent.name;
					}">上级分类</th>
					<%--
					<th data-options="field:'imageUrl', align:'left', width:200, formatter: function(value,row,index){
						return '<img width=50 height=50 src=\''+value+'\'>'
					}">小图</th>
					<th data-options="field:'imageId', align:'left', width:200, formatter: function(value,row,index){
						return '<a style=\'text-decoration:none;\' href=\'javascript:void(0);\' onclick=showImage(\''+value+'\')>单击查看</a>'
					}">大图</th>
					 --%>
				</tr>
			</thead>
		</table>
	</div>
	
</body>
</html>