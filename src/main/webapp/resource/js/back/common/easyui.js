
/**
 * 通用删除方法
 * @param delUrl 删除请求URL
 * @returns
 */
function commondDelete(delUrl) {
	var items = $('#grid').datagrid('getSelections');
	if (items.length == 0) {
		$.messager.alert('警告','请选择要删除的项');
		return;
	} else {
		$.messager.confirm('确认','您确认要删除记录吗？',function(r) {
		    if (r) {
				var str = "";
				for (var i=0; i<items.length; i++) {
					str += "id=" + items[i].id + "&";
				}
				$.ajax({
					url : delUrl+"?"+str.substring(0, str.length-1),
					success : function(data) {
						$("#grid").datagrid("reload");
						$("#grid").datagrid("clearSelections");
						$("#grid").datagrid("clearChecked");
					}
				});
		    }
		});
	}
}

/**
 * 通用上移方法
 * @param mvUrl 上移请求URL
 * @returns
 */
function commonMoveUp(mvUrl) {
	var row1 = $('#grid').datagrid('getSelected'); //获取当前选中行
	if (row1 == null) {
		$.messager.alert('警告','请选择要移动的项');
		return;
	}
	var row1Index = $('#grid').datagrid('getRowIndex', row1); //获取当前行索引
	if (row1Index == 0) return;
	$('#grid').datagrid('unselectAll'); //取消当前页所有行
	$('#grid').datagrid('selectRow', row1Index-1); //根据索引选择行
	var row2 = $('#grid').datagrid('getSelected'); //获取当前选中行
	
	$.ajax({
		url : mvUrl + "?id1="+row1.id+"&id2="+row2.id+"&sort1="+row1.sort+"&sort2="+row2.sort,
		method:'post',
		success:function(data){
			$('#grid').datagrid("reload");
		}
	});
	
	$('#grid').datagrid('unselectAll');
	$('#grid').datagrid('selectRow', row1Index); //根据索引选择行
}

/**
 * 通用下移方法
 * @param mvUrl 下移请求URL
 * @returns
 */
function commonMoveDown(mvUrl) {
	var row1 = $('#grid').datagrid('getSelected'); //获取当前选中行
	if (row1 == null) {
		$.messager.alert('警告','请选择要移动的项');
		return;
	}
	var row1Index = $('#grid').datagrid('getRowIndex', row1); //获取当前行索引
	var rows = $('#grid').datagrid('getRows');
	if ((row1Index+1) == rows.length) return;
	$('#grid').datagrid('unselectAll'); //取消当前页所有行
	$('#grid').datagrid('selectRow', row1Index+1); //根据索引选择行
	var row2 = $('#grid').datagrid('getSelected'); //获取当前选中行
	
	$.ajax({
		url : mvUrl + "?id1="+row1.id+"&id2="+row2.id+"&sort1="+row1.sort+"&sort2="+row2.sort,
		method:'post',
		success:function(data){
			$('#grid').datagrid("reload");
		}
	});
	
	$('#grid').datagrid('unselectAll');
	$('#grid').datagrid('selectRow', row1Index); //根据索引选择行	
}




























