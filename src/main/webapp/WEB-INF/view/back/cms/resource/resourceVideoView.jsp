<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%@ include file="/WEB-INF/view/back/common/common.jspf" %>
	<%@ include file="/WEB-INF/view/back/common/jquery-video.jspf" %>
	<script type="text/javascript">
		//悬浮视频播放关闭
		function close1(){
            var v = document.getElementById('video');//获取视频节点
            v.pause();
        }
	</script>
</head>

<body class="easyui-layout">

	<div id="myVideo" style="width:640px; margin: 100px auto;">
		<video id="video" poster="${resource.imageUrl}" src="${resource.videoUrl}" 
			style="width:640px; margin: center center;"  preload="auto" controls="controls" autoplay="autoplay">
		</video>
		<img onclick="close1()" class="vclose" src="${pageContext.request.contextPath}/resource/js/back/jquery-video/gb.png" width="25" height="25"/>		
	</div>

</body>

</html>