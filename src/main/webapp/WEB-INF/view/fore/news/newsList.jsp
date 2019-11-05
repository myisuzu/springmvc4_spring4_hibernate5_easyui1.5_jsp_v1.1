<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

	<!-- 头部logo、导航 -->
	<%@ include file="/WEB-INF/view/fore/common/header.jspf"%>
	
	<div id="page" class="clearfix">
		<div class="content">
			<link href="${pageContext.request.contextPath}/resource/js/fore/Content/duke/css/allinone_carousel.css" rel="stylesheet" />
			<script src="${pageContext.request.contextPath}/resource/js/fore/Content/duke/js/jquery-ui-1.8.16.custom.min.js"></script>
			<script src="${pageContext.request.contextPath}/resource/js/fore/Content/duke/js/allinone_carousel.js"></script>
			<link href="${pageContext.request.contextPath}/resource/js/fore/Content/duke/css/style.css" rel="stylesheet" />
			<link href="${pageContext.request.contextPath}/resource/js/fore/Content/duke/css/flexslider.css" rel="stylesheet" />
			<link href="${pageContext.request.contextPath}/resource/js/fore/Content/duke/css/bootstrap-responsive.min.css" rel="stylesheet" />
			<script src="${pageContext.request.contextPath}/resource/js/fore/Content/duke/js/jquery.flexslider-min.js"></script>
			<script src="${pageContext.request.contextPath}/resource/js/fore/Content/duke/js/jquery.flexisel.js"></script>
			<script src="${pageContext.request.contextPath}/resource/js/fore/Content/duke/js/flexslider.js"></script>
			<link href="${pageContext.request.contextPath}/resource/js/fore/Content/duke/css/home.css" rel="stylesheet" />
			<link href="${pageContext.request.contextPath}/resource/js/fore/Content/duke/css/3d/index-content.css" rel="stylesheet" />
			<link href="${pageContext.request.contextPath}/resource/js/fore/Content/duke/css/3d/animate.css" rel="stylesheet" />
			<link href="${pageContext.request.contextPath}/resource/js/fore/Content/duke/css/3d/animate-tool.css" rel="stylesheet" />
			<script src="${pageContext.request.contextPath}/resource/js/fore/Content/duke/js/global.js"></script>
			<script src="${pageContext.request.contextPath}/resource/js/fore/Content/duke/js/lististop.js"></script>
				
			<div class="start_search" ng-controller="TrainingNewsSearchCtrl">
				<div class="start_search_box">
					<div class="start_search_left">
						<h2>${pb.list[0].type.name}</h2>
						<!-- 新闻列表 -->
						<div style="min-height: 577px;">
							<table class="curriculums_table">
								<tbody>
									<c:forEach items="${pb.list}" var="news">
										<tr class="ng-scope">
											<td>
												<a target="_blank" style="width: 520px;" class="name_course_list ng-binding"
												href="${pageContext.request.contextPath}/index/newsInfo?id=${news.id}">${news.title}</a>
											</td>
											<fmt:parseDate value="${news.addDate}" pattern="yyyy-MM-dd HH:mm:ss" var="newsDate"/>
											<td class="content12 ng-binding"><fmt:formatDate value="${newsDate}" pattern="yyyy-MM-dd"/></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- 新闻列表 -->
						
						<!-- 新闻分页 -->
						<div class="query_page_815">
							<a href="${pageContext.request.contextPath}/index/newsList?pageNo=1&typeId=${pb.list[0].type.id}" <c:if test="${pb.pageNo == 1}">class="disabled"</c:if>>首页</a> 
							<a href="${pageContext.request.contextPath}/index/newsList?pageNo=${pb.prevPage}&typeId=${pb.list[0].type.id}" <c:if test="${pb.pageNo == 1}">class="disabled"</c:if>>上一页</a>
							<c:forEach items="${pb.navPageNums }" var="page">
								<a href="${pageContext.request.contextPath}/index/newsList?pageNo=${page}&typeId=${pb.list[0].type.id}" 
								class="ng-scope ng-binding <c:if test="${pb.pageNo == page}">active</c:if>">${page}</a>
							</c:forEach>
							<a href="${pageContext.request.contextPath}/index/newsList?pageNo=${pb.nextPage}&typeId=${pb.list[0].type.id}" <c:if test="${pb.pageNo == pb.pages}">class="disabled"</c:if>>下一页</a> 
							<a href="${pageContext.request.contextPath}/index/newsList?pageNo=${pb.pages}&typeId=${pb.list[0].type.id}" <c:if test="${pb.pageNo == pb.pages}">class="disabled"</c:if>>尾页</a>
						</div>
						<!-- 新闻分页 -->
						
					</div>
					<div class="start_search_right">
						<div class="similar_courses_promote">
							<div class="similar_courses_promote_title">
								<h2 style="margin-top: 0px;">
									线上视频
									<a href="${pageContext.request.contextPath}/index/resourceList?typeId=${xsspList[0].type.id}" target="_blank">more</a>
								</h2>
							</div>
							<ul>
								<c:forEach items="${xsspList }" var="xssp">
									<li>
										<a class="hot_videos_list" target="_blank"
											ng-bind-template="${xssp.name }"
											href="${pageContext.request.contextPath}/index/resourceInfo?id=${xssp.id}">
										</a>
										<fmt:parseDate value="${xssp.addDate}" pattern="yyyy-MM-dd HH:mm:ss" var="xsspDate" />
										<p ng-bind-template="<fmt:formatDate value="${xsspDate}" pattern="MM月dd日" />" class="audition_time" style="margin-bottom: 0px;"></p>
									</li>
								</c:forEach>
							</ul>
						</div>
						<div class="similar_courses_promote">
							<div class="similar_courses_promote_title">
								<h2 style="margin-top: 14px;">
									近期开班
									<a href="${pageContext.request.contextPath}/index/resourceList?typeId=${xxmsList[0].type.id}" target="_blank">more</a>
								</h2>
							</div>
							<ul>
								<c:forEach items="${xxmsList }" var="xxms">
									<li>
										<a class="hot_videos_list" target="_blank"
											ng-bind-template="【${xxms.location }】${xxms.name }"
											href="${pageContext.request.contextPath}/index/resourceInfo?id=${xxms.id}">
										</a>
										<fmt:parseDate value="${xxms.addDate}" pattern="yyyy-MM-dd HH:mm:ss" var="xxmsDate" />
										<p ng-bind-template="<fmt:formatDate value="${xxmsDate}" pattern="MM月dd日" />" class="audition_time" style="margin-bottom: 0px;"></p>
									</li>
								</c:forEach>
							</ul>
						</div>
						<div class="similar_courses_promote">
							<div class="similar_courses_promote_title">
								<h2 style="margin-top: 13px;">
									培训新闻
									<a href="${pageContext.request.contextPath}/index/newsList?typeId=${pxxwList[0].type.id}" target="_blank">more</a>
								</h2>
							</div>
							<ul>
								<c:forEach items="${pxxwList }" var="pxxw">
									<li>
										<a class="hot_videos_list" target="_blank"
											ng-bind-template="${pxxw.title }"
											href="${pageContext.request.contextPath}/index/newsInfo?id=${pxxw.id}">
										</a>
										<fmt:parseDate value="${pxxw.addDate}" pattern="yyyy-MM-dd HH:mm:ss" var="pxxwDate" />
										<p ng-bind-template="<fmt:formatDate value="${pxxwDate}" pattern="MM月dd日" />" class="audition_time" style="margin-bottom: 0px;"></p>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 底部版权 -->
	<%@ include file="/WEB-INF/view/fore/common/footer.jspf"%>

