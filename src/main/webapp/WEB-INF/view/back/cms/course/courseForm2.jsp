<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/view/back/common/common.jspf" %>
<%@ include file="/WEB-INF/view/back/common/jquery-easyui-1.5.jspf" %>
<%@ include file="/WEB-INF/view/back/common/ueditor.jspf" %>
<%--
<%@ include file="/WEB-INF/view/back/common/webuploader-0.1.5.jspf" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/back/webuploader-0.1.5/cxuploder/cxuploder1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/back/common/method.js"></script>	
 --%>
<script type="text/javascript">
	$(function() {
		//实例化ueditor
		var ue = UE.getEditor("content", {
			initialFrameWidth: 1000, 	//设置初始化宽度
			initialFrameHeight: 400, 	//设置初始化高度
			toolbars: [ 				//定制工具栏
				['fullscreen',  'source', 'undo', 'redo'],
			    ['bold', 'italic', 'underline', 'fontborder', 'strikethrough', 'superscript', 'subscript', 'removeformat', 'formatmatch', 'autotypeset', 'blockquote', 'pasteplain', '|', 'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist', 'selectall', 'cleardoc', 'simpleupload', 'insertimage']
			],
		});
		//上级课程JSON数据
		$('#pid').combotree({    
		    url : "${pageContext.request.contextPath}/cms/course/easyuiTreeJson",
		    method : 'get',
		    lines : false,
		    panelHeight : 180,
		    /*required: true*/
		});
		
		// 修改密码弹窗取消按钮
		$("#btnCancel").click(function(){
			$("#saveWindow").window("close");
		});
		$("#btnEp").click(function() {
			if ($("#myForm").form('validate')) {
				$("#myForm").submit();
				$("#saveWindow").window("close");
			}
		});
		$("#myForm").form({
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
				if (isContains(url, "course/update")) {
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
	});
</script>

<div class="easyui-layout" fit="true">
	<div region="center" border="false" style="padding:10px; background:#fff; border:1px solid #ccc;">
		<form id="myForm" method="post">
			<input type="hidden" id="input_hidden_id" name="id" value="${course.id }">
			<input type="hidden" id="input_hidden_image_id" value="${course.imageId}">
			<table id="dictTbl" class="table-edit" width="100%" align="center">
				<tr>
					<td width="100">课程名称:</td>
					<td>
						<input style="width:200px;" type="text" name="name" id="name" class="easyui-validatebox" required="true">
					</td>
				</tr>
				<tr>
					<td>上级分类:</td>
					<td>
						<input style="width:250px;" value="" name="pid" id="pid" class="easyui-combotree">
					</td>
				</tr>
				<%--
				
				<tr>
					<td style="text-align:center;">图片 :</td>
					<td>
						<!-- webuploader百度图片上传插件 -->	
						<div class="uploder-container" style="width:600px;">
					        <div class="cxuploder">
								<div class="queueList">
					                <div class="placeholder">
					                    <div class="filePicker"></div>
					                    <p>或将照片拖到这里，单次最多可选300张</p>
					                </div>
					            </div>
					            <div class="statusBar" style="display:none;">
						            <div class="btns">
						                <div class="jxfilePicker"></div>
						            </div>
						            <div class="info"></div>
					        	</div>
					    	</div>
						</div>
					</td>
				</tr>
				 --%>
				<tr>
					<td style="vertical-align:middle; text-align:center;">课程内容:</td>
					<td>
						<textarea id="content" name="content"></textarea>
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
