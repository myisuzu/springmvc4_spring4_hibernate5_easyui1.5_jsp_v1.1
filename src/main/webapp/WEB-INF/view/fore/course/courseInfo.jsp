<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- 头部logo、导航 -->
<%@ include file="/WEB-INF/view/fore/common/header.jspf"%>

<div id="page" class="clearfix">
	<div class="content" style="text-align:center;">
		<p>${course.content}</p>
	</div>
</div>

<!-- 底部版权 -->
<%@ include file="/WEB-INF/view/fore/common/footer.jspf"%>

