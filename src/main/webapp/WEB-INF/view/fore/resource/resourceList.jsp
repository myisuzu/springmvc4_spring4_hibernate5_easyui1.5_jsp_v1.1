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
						<!-- 开班列表 -->
						<h2>${pb.list[0].type.name}</h2>
						<%--
			            <div class="query_condition_815">
			                <input type="text" class="course_input" placeholder="请输入课程名称" ng-model="QueryBuilder.Key" />
			                <button class="query_button_1">搜索近期开班</button>
			            </div>
						 --%>
			            <div style="min-height:517px;">
			                <table class="curriculums_table">
			                    <thead>
			                        <tr>
			                            <th><div class="name_course" style="width:271px;">课程名称</div></th>
			                            <th><div class="starting_course" style="text-align:left;">开课日期</div></th>
			                            <th><div>开课方式</div></th>
			                        </tr>
			                    </thead>
			                    <tbody>
			                    	<c:forEach items="${pb.list }" var="resource">
				                        <tr>
				                            <td>
				                                <div class="name_course_list" style="width:271px;">
				                                    <a target="_blank" ng-href="${pageContext.request.contextPath}/index/resourceInfo?id=${resource.id}" ng-bind-template="【${resource.location }】${resource.name }"></a>
				                                </div>
				                            </td>
				                            <td style="font-size:14px;"><div class="starting_course_list" title="${resource.startDate }" ng-bind-template="${resource.startDate }" style="text-align:left;width:190px;"></div></td>
				                            <td style="font-size:14px;" ng-bind-template="${resource.type.name}"></td>
				                        </tr>
			                    	</c:forEach> 
			                    </tbody>
			                </table>
			            </div>
						<!-- 开班列表 -->
						
						<!-- 分页 -->
						<div class="query_page_815">
							<a href="${pageContext.request.contextPath}/index/resourceList?pageNo=1&typeId=${pb.list[0].type.id}" <c:if test="${pb.pageNo == 1}">class="disabled"</c:if>>首页</a> 
							<a href="${pageContext.request.contextPath}/index/resourceList?pageNo=${pb.prevPage}&typeId=${pb.list[0].type.id}" <c:if test="${pb.pageNo == 1}">class="disabled"</c:if>>上一页</a>
							<c:forEach items="${pb.navPageNums }" var="page">
								<a href="${pageContext.request.contextPath}/index/resourceList?pageNo=${page}&typeId=${pb.list[0].type.id}" 
								class="ng-scope ng-binding <c:if test="${pb.pageNo == page}">active</c:if>">${page}</a>
							</c:forEach>
							<a href="${pageContext.request.contextPath}/index/resourceList?pageNo=${pb.nextPage}&typeId=${pb.list[0].type.id}" <c:if test="${pb.pageNo == pb.pages}">class="disabled"</c:if>>下一页</a> 
							<a href="${pageContext.request.contextPath}/index/resourceList?pageNo=${pb.pages}&typeId=${pb.list[0].type.id}" <c:if test="${pb.pageNo == pb.pages}">class="disabled"</c:if>>尾页</a>
						</div>
						<!-- 分页 -->
						
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

