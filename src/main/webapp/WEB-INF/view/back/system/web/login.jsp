<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>登陆页面</title>
	<meta HTTP-EQUIV="pragma" CONTENT="no-cache"> 
	<meta HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate"> 
	<meta HTTP-EQUIV="expires" CONTENT="0">
	<%@ include file="/WEB-INF/view/back/common/common.jspf" %>
	<%@ include file="/WEB-INF/view/back/common/jquery-easyui-1.5.jspf" %>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/back/frame/style_grey.css"/>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/back/frame/style.css"/>
	<style>
		input[type=text] {
			width: 80%;
			height: 25px;
			font-size: 12pt;
			font-weight: bold;
			margin-left: 45px;
			padding: 3px;
			border-width: 0;
		}
		input[type=password] {
			width: 80%;
			height: 25px;
			font-size: 12pt;
			font-weight: bold;
			margin-left: 45px;
			padding: 3px;
			border-width: 0;
		}
		#codeInput {
			margin-left: 1px;
			margin-top: 1px;
		}
		#vCode {
			margin: 0px 0 0 60px;
			height: 34px;
		}
	</style>
	<script type="text/javascript">
		if (window.parent != window) {
			window.parent.location.href = window.location.href;
		}
		$(function(){
			$("#loginBtn").click(function(){
				$("#loginform").submit();
			});
			$("#loginform").form({
				url : "${pageContext.request.contextPath}/system/user/login",
				onSubmit : function() {
					return $(this).form('validate');
				},
				success : function(data) {
					if (data == 1) {
						$("#div_error2").css("display", "block");
						$("#div_error1").css("display", "none");
					} else if (data == 2) {
						$("#div_error1").css("display", "block");
						$("#div_error2").css("display", "none");
					} else if (data == 3) {
						window.location.href = "${pageContext.request.contextPath}/system/web/main";
					}
				},
				error : function(msg) {
					alert("系统错误，请联系管理员！");
				}
			});
			var $loginName = $("#idInput");
			var $password = $("#pwdInput");
			var $code = $("#codeInput");
			$loginName.focus();
			$loginName.keydown(function(e) {
				if(e.keyCode == 13) {
					$password.focus();
				}
			});
			$password.keydown(function(e) {
				if(e.keyCode == 13) {
					$code.focus();
					return;
				}
			});
			$code.keydown(function(e) {
				if(e.keyCode == 13) {
					if ($loginName.val() == null || $loginName.val() == "") {
						//$.messager.alert('提示', '用户名不能为空');
						alert("用户名不能为空");
						$loginName.focus();
						return;
					}
					if ($password.val() == null || $password.val() == "") {
						//$.messager.alert('提示', '密码不能为空');
						alert("密码不能为空");
						$password.focus();
						return;
					}
					if ($code.val() == null || $code.val() == "") {
						//$.messager.alert('提示', '验证码不能为空');
						alert("验证码不能为空");
						$code.focus();
						return;
					}
					$("#loginform").submit();
				}
			});
		});
	</script>
</head>
<body>
	<div style="width: 900px; height: 50px; position: absolute; text-align: left; left: 50%; top: 50%; margin-left: -450px;; margin-top: -280px;">
		<!-- 
		<img width="368" height="57" src="${pageContext.request.contextPath}/resource/image/back/frame/logo.png" style="border-width: 0; margin-left: 5px;" />
		 -->
		<span style="float: right; margin-top: 35px; color: #488ED5;">致力于便捷、安全、稳定等方面的客户体验</span>
	</div>
	
	<div class="main-inner" id="mainCnt" style="width: 900px; height: 440px; overflow: hidden; position: absolute; left: 50%; top: 50%; margin-left: -450px; margin-top: -220px; background-image: url('${pageContext.request.contextPath}/resource/image/back/frame/bg_login.jpg')">
		<div id="loginBlock" class="login" style="margin-top: 80px; height: 255px;">
			<div class="loginFunc">
				<div id="lbNormal" class="loginFuncMobile">用户登录</div>
			</div>
			<div id="div_error1" style="text-align:center; height:20px; display:none;">
				<font color="red">用户名或密码错误</font>
			</div>
			<div id="div_error2" style="text-align:center; height:20px; display:none;">
				<font color="red">验证码错误</font>
			</div>
			<div class="loginForm">
				<form autocomplete="off" id="loginform" name="loginform" method="get" class="niceform">
					<div id="idInputLine" class="loginFormIpt showPlaceholder" style="margin-top: 5px;">
						<input value="admin" type="text" id="idInput" name="username" class="loginFormTdIpt" maxlength="50" tabindex="1" title="请输入帐号"/> 
						<label for="loginName" class="placeholder" id="idPlaceholder">账号：</label>
					</div>
					<div class="forgetPwdLine"></div>
					<div id="pwdInputLine" class="loginFormIpt showPlaceholder">
						<input value="123" type="password" id="pwdInput" class="loginFormTdIpt" name="password" value="" tabindex="2" title="请输入密码">
						<label for="password" class="placeholder" id="pwdPlaceholder">密码：</label>
					</div>
					<div class="loginFormIpt loginFormIptWiotTh" style="margin-top:58px;">
						<div id="codeInputLine" class="loginFormIpt showPlaceholder" style="margin-left:0px;margin-top:-40px;width:50px;">
							<input id="codeInput" class="loginFormTdIpt" type="text" name="code" title="请输入验证码" />
							<img id="vCode" src="${pageContext.request.contextPath}/system/web/valicode" onclick="javascript:document.getElementById('vCode').src='${pageContext.request.contextPath}/system/web/valicode?'+Math.random();" />
						</div>
						<a href="javascript:void(0)" id="loginform:j_id19" name="loginform:j_id19">
							<span id="loginBtn" class="btn btn-login" style="margin-top:-40px;">登录</span>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<div style="width: 900px; height: 50px; position: absolute; text-align: center; left: 50%; top: 50%; margin-left: -450px;; margin-top: 220px;">
		<span style="color: #488ED5;">技术支持：XXX有限公司&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
		<span style="color:#488ED5; margin-left:10px;">推荐浏览器（右键链接-目标另存为）：
			<a href="${pageContext.request.contextPath}/resource/browser/Chrome.zip">谷歌</a>
			<a href="${pageContext.request.contextPath}/resource/browser/Firefox.zip">火狐</a>
		</span>
	</div>
</body>
</html>