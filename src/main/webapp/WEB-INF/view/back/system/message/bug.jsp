<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<script type="text/javascript">
	$(function() {
		$("#bug_form_but").click(function() {
			$.messager.confirm("确认", "确认提交系统Bug反馈吗？", function(r) {
			    if (r) {
					$("#bug_form").submit();
			    }
			});
		});
		//功能相对独立，应该单独放置
		$('#bug_form').form ({
			url : "${pageContext.request.contextPath}/system/feedback/add",  
			onSubmit: function() {  
				if ($('#bug_c').val()==""){
					$.messager.alert('Warning',"内容太少");	
					return false;
				}
			}, 
			success: function(data){  
				$.messager.alert('Warning',"提交成功"); 
				$('#bug_c').val("");
			}  
		});
	})
</script>

<div style="padding:10px;">

	<div style="margin-bottom:8px;">您的意见会让系统做得更好<br /></div>
	
	<form id="bug_form" method="post" enctype="application/x-www-form-urlencoded">
		<textarea name="content" id="bug_c" cols="50" rows="4" style=" border:solid 3px #E2E2E2;line-height:16px; padding:5px;"></textarea>
		</br>
		<div style="margin-top:8px;">
			<a id="bug_form_but" href="javascript:void(0);" class="easyui-linkbutton">提交</a>
		</div>
	</form>
</div>

