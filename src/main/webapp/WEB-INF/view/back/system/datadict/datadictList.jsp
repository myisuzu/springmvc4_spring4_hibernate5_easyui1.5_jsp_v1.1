<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>数据字典管理</title>
	<%@ include file="/WEB-INF/view/back/common/common.jspf" %>
	<%@ include file="/WEB-INF/view/back/common/jquery-easyui-1.5.jspf" %>	
	<script type="text/javascript">
		var url = "";
		var toolbar = ${toolbar};
		//添加
		function doAdd() {
			url = "${pageContext.request.contextPath}/system/datadict/add";
			$("#saveWindow").window("open");
			$("#saveWindow").window("setTitle", "数据字典添加");
			$("#saveWindow").window("refresh", "${pageContext.request.contextPath}/system/datadict/saveUI");
		}
		//编辑
		function doUpdate() {
			var item = $('#grid').treegrid('getSelections');
			if (item.length == 0) {
				$.messager.alert("提示", "请选择要修改的行");
			} else if (item.length > 1) {
				$.messager.alert("提示", "一次只能选择一行进行修改");
			} else {
				var id = item[0].id;
				url = "${pageContext.request.contextPath}/system/datadict/update?id="+item[0].id;
				$("#saveWindow").window("open");
				$("#saveWindow").window("refresh", "${pageContext.request.contextPath}/system/datadict/saveUI");
				$("#saveWindow").window("setTitle", "数据字典修改");
				setTimeout(function() {
					$("#tr_pid").css("display", "none");
					$("#dname").val(item[0].name);
				}, 200);
			}
		}
		//通用上移方法
		function doMoveUp() {
			var row1 = $('#grid').treegrid('getSelected'); //获取当前选中行
			if (row1 == null) {
				$.messager.alert('警告','请选择要移动的项');
				return;
			}
			$.ajax({
				url : "${pageContext.request.contextPath}/system/datadict/moveUp?id="+row1.id,
				method:'post',
				success:function(data){
					$('#grid').treegrid("reload");
				}
			});
			$('#grid').treegrid('unselectAll');
			$('#grid').treegrid('selectRow', row1Index); //根据索引选择行
		}
		//通用下移方法
		function doMoveDown() {
			commonMoveDown("${pageContext.request.contextPath}/system/datadict/move");
		}
		//删除
		function doDelete() {
			var items = $('#grid').treegrid('getSelections');
			if (items.length == 0) {
				$.messager.alert('提示','请选择要删除的项');
				return;
			} else if (items.length > 1) {
				$.messager.alert('提示','一次只能删除一项');
				$("#grid").treegrid("clearSelections");
				$("#grid").treegrid("clearChecked");
				return;
			} else {
				$.ajax({
					url : '${pageContext.request.contextPath}/system/datadict/childCountJson?pid='+items[0].id,
					timeout : 3000,
					async : false,
					type : 'POST',
					dataType : 'text',
					success : function(data) {
						if (data >= 1) {
							$.messager.alert('警告','数据字典有明细,先删除明细');
							return;
						} else {
							$.messager.confirm('确认','确认删除记录吗？',function(r) {
							    if (r) {
									var str = "";
									for (var i=0; i<items.length; i++) {
										str += "id=" + items[i].id + "&";
									}
									$.ajax({
										url : "${pageContext.request.contextPath}/system/datadict/delete?"+str.substring(0, str.length-1),
										success : function(data) {
											$("#grid").treegrid("reload");
											$("#grid").treegrid("clearSelections");
											$("#grid").treegrid("clearChecked");
										}
									});
							    }
							});
						}
					},
					error : function(msg) {
						alert('数据加载异常!');
					}
				});	
			}
		}
	</script>
</head>

<body class="easyui-layout">
	
	<div region="center" split="false" border="false">
		<table id="grid" class="easyui-treegrid" 
		data-options="border:false, fit:true, rownumbers:true, striped:true,
			url:'${pageContext.request.contextPath}/system/datadict/list', pagination:true, pageSize:100, 
			pageList:[10,30,50,100], toolbar:toolbar, idField:'id', treeField:'name', 
			singleSelect:false, ctrlSelect:true, onlyLeafCheck:false,
			lines:true, animate:true">        
		    <thead frozen="true">
				<tr>
					<th data-options="field:'id', checkbox:true">
					<th data-options="field:'name', align:'left', width:300">名称</th>
				</tr>
			</thead>
			<thead>
				<tr>
					<th data-options="field:'code', align:'center', width:80">编码</th>
					<th data-options="field:'type', align:'left', width:200, formatter: function(value,row,index) {
						if (row.parent) return row.parent.name;
					}">类别</th>
				</tr>
			</thead>
		</table>  		
	</div>
	
	<div id="saveWindow" class="easyui-window" style="width:480px;height:220px;"
       data-options="modal:true, closed:true, collapsible:false, minimizable:false, maximizable:false, icon:'icon-save'">
   	</div>
   	
</body>
</html>