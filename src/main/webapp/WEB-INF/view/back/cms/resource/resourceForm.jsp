<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>首页滚动图片管理</title>
	<%@ include file="/WEB-INF/view/back/common/common.jspf" %>
	<%@ include file="/WEB-INF/view/back/common/jquery-easyui-1.5.jspf" %>
	<%@ include file="/WEB-INF/view/back/common/ueditor.jspf" %>
	<%@ include file="/WEB-INF/view/back/common/webuploader-0.1.5.jspf" %>
	<%@ include file="/WEB-INF/view/back/common/jquery-fileupload.jspf" %>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/back/webuploader-0.1.5/cxuploder/cxuploder1.js"></script>	
	<script type="text/javascript">
		$(function() {
			//修改班级时回显上课方式
			<c:if test="${resource != null}">
				$("#typeId").combotree("setValue", ${resource.type.id});
			</c:if>
			
			//实例化ueditor
			var ue = UE.getEditor("intro", {
				initialFrameWidth: 600, 	//设置初始化宽度
				initialFrameHeight: 200, 	//设置初始化高度
				toolbars: [ 				//定制工具栏
					['fullscreen',  'source', 'undo', 'redo'],
				    ['bold', 'italic', 'underline', 'fontborder', 'strikethrough', 'superscript', 'subscript', 'removeformat', 'formatmatch', 'autotypeset', 'blockquote', 'pasteplain', '|', 'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist', 'selectall', 'cleardoc', 'simpleupload', 'insertimage']
				],
			});
			//实例化ueditor
			var ue = UE.getEditor("outline", {
				initialFrameWidth: 600, 	//设置初始化宽度
				initialFrameHeight: 200, 	//设置初始化高度
				toolbars: [ 				//定制工具栏
					['fullscreen',  'source', 'undo', 'redo'],
				    ['bold', 'italic', 'underline', 'fontborder', 'strikethrough', 'superscript', 'subscript', 'removeformat', 'formatmatch', 'autotypeset', 'blockquote', 'pasteplain', '|', 'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist', 'selectall', 'cleardoc', 'simpleupload', 'insertimage']
				],
			});
			
			$("#back").click(function(){
				window.location.href = "${pageContext.request.contextPath}/cms/resource/listUI";
			});
			$("#save").click(function() {
				$.messager.confirm("确认", "您确认要保存记录吗？", function(r) {
				    if (r) {
						if ($("#myForm").form('validate')) {
							$("#myForm").submit();
						}
				    }
				});
			});
			$("#myForm").form({
				url: "${pageContext.request.contextPath}/cms/resource/${resource == null ? 'add':'update'}",
				onSubmit: function() {
					return $(this).form('validate');
				},
				success: function(data) {
					window.location.href = "${pageContext.request.contextPath}/cms/resource/listUI";
					top.$.messager.show({
						title : "提示",
						msg : "保存成功",
						timeout : 3000
					});
				}
			});
			//视频上传
		    $('#fileupload')
			    .fileupload({
			    	//请求发送的目标地址
			    	url: '${pageContext.request.contextPath}/common/file/general/upload',	
			        dataType: 'json', //服务器返回的数据类型
			        type : 'POST', //请求方式 ，可以选择POST，PUT或者PATCH,默认POST
					//autoUpload : false,
					acceptFileTypes : /(mp4|png)$/i,//验证图片格式
					maxFileSize : 104857600, // 文件上限100MB
					//文件错误信息
					messages : {
						acceptFileTypes : '文件类型不匹配',
						maxFileSize : '文件过大'
					},
					progressall: function (e, data) {
			            var progress = parseInt(data.loaded / data.total * 100, 10);
			            $('#progress .bar').css('width', progress + '%');
			        }
			    })
				//上传完成后回调(最后)
				.on("fileuploadalways", function(e, data) {
					var videoUrl = data.result.data.fileUrl;
					$("#myForm").append("<input type='hidden' name='videoUrl' value='"+videoUrl+"'>");
					$.messager.alert('提示','文件上传成功!');   
				});
			
		});
	</script>
</head>

<body class="easyui-layout">

	<div region="north" style="height:31px;overflow:hidden;" split="false" border="false">
		<div class="datagrid-toolbar">
			<a id="back" icon="icon-back" href="javascript:history.back(0)" class="easyui-linkbutton" plain="true">返回</a>
			<a id="save" icon="icon-save" href="javascript:void(0)" class="easyui-linkbutton" plain="true">保存</a> 
		</div>
	</div>
	
	<div region="center" style="overflow:auto;padding:5px;" border="false">
		<form id="myForm" method="post">
			<input type="hidden" id="input_hidden_id" name="id" value="${resource.id }">
			<input type="hidden" id="input_hidden_image_id" value="${resource.imageId}">
			<table class="table-edit" width="99%" align="center">
				<tr class="title">
					<td colspan="2">基本信息</td>
				</tr>
				<tr>
					<td width="100">课程名称:</td>
					<td>
						<input value="${resource.name}" style="width:400px;" type="text" name="name" id="name" class="easyui-validatebox" required="true">
					</td>
				</tr>
				<tr>
					<td width="100">课程时长:</td>
					<td>
						<input value="${resource.duration}" style="width:400px;" type="text" name="duration" id="duration" class="easyui-validatebox" required="true">
					</td>
				</tr>
				<tr>
					<td width="100">开课时间:</td>
					<td>
						<input type="text" name="startDate" value="${resource.startDate}" class="easyui-datebox" required="true" style="width:200px;">
					</td>
				</tr>
				<tr>
					<td>课程分类:</td>
					<td>
						<input type="text" name="type.id" id="typeId" class="easyui-combotree" required="true"
							data-options="url:'${pageContext.request.contextPath}/system/datadict/combotreeJsonByPcode?code=zyfl', method:'post', width:208, lines:false">
					</td>
				</tr>
				<tr>
					<td width="100">上课地点:</td>
					<td>
						<input value="${resource.location}" style="width:400px;" type="text" name="location" id="location" class="easyui-validatebox" required="true">
					</td>
				</tr>
				<tr>
					<td width="100">视频文件:</td>
					<td>
						<input id="fileupload" type="file" name="uploadFile" multiple>
						<span style="color:red;">仅支持mp4格式</span>
						<div id="progress">
						    <div class="bar" style="width: 0%;"></div>
						</div>
					</td>
				</tr>
				<tr>
					<td style="text-align:center;">课程图片:</td>
					<td>
						<!-- webuploader百度图片上传插件 -->	
						<div class="uploder-container" style="width:600px; height:240px;">
					        <div class="cxuploder">
								<div class="queueList">
					                <div class="placeholder" style="min-height:200px; padding-top:0px;">
					                    <div class="filePicker" style="margin-top:20px;"></div>
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
				<tr>
					<td style="vertical-align:middle; text-align:center;">课程介绍:</td>
					<td>
						<textarea id="intro" name="intro">${resource.intro}</textarea>
					</td>
				</tr>
				<tr>
					<td style="vertical-align:middle; text-align:center;">课程大纲:</td>
					<td>
						<textarea id="outline" name="outline">${resource.outline}</textarea>
					</td>
				</tr>
			</table>
		</form>
	</div>
	
</body>

</html>	
