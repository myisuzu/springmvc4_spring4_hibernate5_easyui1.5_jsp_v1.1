<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- 头部logo、导航 -->
<%@ include file="/WEB-INF/view/fore/common/header.jspf"%>

<div id="page" class="clearfix">
	<div class="content">

		<link
			href="${pageContext.request.contextPath}/resource/js/fore/Content/duke/css/allinone_carousel.css"
			rel="stylesheet">
		<script
			src="${pageContext.request.contextPath}/resource/js/fore/Content/duke/js/jquery-ui-1.8.16.custom.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resource/js/fore/Content/duke/js/allinone_carousel.js"></script>
		<link
			href="${pageContext.request.contextPath}/resource/js/fore/Content/duke/css/style.css"
			rel="stylesheet">
		<link
			href="${pageContext.request.contextPath}/resource/js/fore/Content/duke/css/flexslider.css"
			rel="stylesheet">
		<link
			href="${pageContext.request.contextPath}/resource/js/fore/Content/duke/css/bootstrap-responsive.min.css"
			rel="stylesheet">
		<script
			src="${pageContext.request.contextPath}/resource/js/fore/Content/duke/js/jquery.flexslider-min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resource/js/fore/Content/duke/js/jquery.flexisel.js"></script>
		<script
			src="${pageContext.request.contextPath}/resource/js/fore/Content/duke/js/flexslider.js"></script>
		<link
			href="${pageContext.request.contextPath}/resource/js/fore/Content/duke/css/home.css"
			rel="stylesheet">
		<link
			href="${pageContext.request.contextPath}/resource/js/fore/Content/duke/css/3d/index-content.css"
			rel="stylesheet">
		<link
			href="${pageContext.request.contextPath}/resource/js/fore/Content/duke/css/3d/animate.css"
			rel="stylesheet">
		<link
			href="${pageContext.request.contextPath}/resource/js/fore/Content/duke/css/3d/animate-tool.css"
			rel="stylesheet">
		<script
			src="${pageContext.request.contextPath}/resource/js/fore/Content/duke/js/global.js"></script>
		<script
			src="${pageContext.request.contextPath}/resource/js/fore/Content/duke/js/slider.js"></script>
		<script
			src="${pageContext.request.contextPath}/resource/js/fore/Content/duke/js/slider_options.js"></script>
		<script
			src="${pageContext.request.contextPath}/resource/js/fore/Content/duke/js/scroll.js"></script>
		<script
			src="${pageContext.request.contextPath}/resource/js/fore/Scripts/jquery.SuperSlide.2.1.2.js"></script>
		<script type="text/javascript">
			$(function() {
				/*顶部滚动大图*/
				$('.flexslider').flexslider({
					directionNav : true,
					pauseOnAction : false
				});
				
				/*开班信息滚动*/
				jQuery(".oneside").slide({
					mainCell : ".bd",
					autoPlay : true,
					effect : "topMarquee",
					vis : 5,
					interTime : 50,
					trigger : "click"
				});
			});
		</script>

		<!-- 首页滚动图片 -->
		<div class="flexslider">
			<ul class="slides">
				<c:forEach items="${imageList}" var="image">
					<li><a class="center_of_image"
						style="background: url(${image.imageUrl}) no-repeat center"
						href="javascript:void(0)"> </a></li>
				</c:forEach>
			</ul>
		</div>
		<!-- 首页滚动图片 -->

		<section class="middle_module_box" style="width: 1100px;" ng-controller="HomeCtrl">
		
			<!-- 新品速递 -->
			<div class="lf-product-new">
				<h3>--------新品速递--------</h3>
				<ul>
					<c:forEach items="${xpsdList}" var="xpsd">
						<li>
							<a target="_blank" href="${pageContext.request.contextPath}/index/newsInfo?id=${xpsd.id}">
								${xpsd.title } 
							</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<!-- 新品速递 -->
			
			<!-- 个人学习、企业学习 -->
			<div class="lf-study-type">
				<div class="type " style="margin-right: 1%;">
					<h3>个人学习</h3>
					<ul class="lf-study-item">
						<li style="margin-left: 30px;"><a
							href="ad/personalstudy-type=tab1.htm"> <img
								src="${pageContext.request.contextPath}/resource/js/fore/Content/Images/Home/ps1.png" />
								<span>知识技能学习</span>
						</a></li>
						<li><a href="ad/personalstudy-type=tab2.htm"> <img
								src="${pageContext.request.contextPath}/resource/js/fore/Content/Images/Home/ps2.png" />
								<span>认证考试学习</span>
						</a></li>
						<li style="margin-right: 29px;"><a
							href="ad/personalstudy-type=tab3.htm"> <img
								src="${pageContext.request.contextPath}/resource/js/fore/Content/Images/Home/ps3.png" />
								<span>岗位能力提升</span>
						</a></li>
					</ul>
				</div>
				<div class="type" style="margin-left: 1%;">
					<h3 style="background-color: #263850;">企业学习</h3>
					<ul class="lf-study-item">
						<li style="margin-left: 29px;"><a
							href="ad/enterprisestudy-t=0.htm"> <img
								src="${pageContext.request.contextPath}/resource/js/fore/Content/Images/Home/ep1.png" />
								<span>企业定制内训</span>
						</a></li>
						<li><a href="ad/enterprisestudy-t=1.htm"> <img
								src="${pageContext.request.contextPath}/resource/js/fore/Content/Images/Home/ep2.png" />
								<span>岗位人才培养</span>
						</a></li>
						<li style="margin-right: 30px;"><a
							href="ad/enterprisestudy-t=2.htm"> <img
								src="${pageContext.request.contextPath}/resource/js/fore/Content/Images/Home/ep3.png" />
								<span>企业MOOC定制</span>
						</a></li>
					</ul>
				</div>
			</div>
			<!-- 个人学习、企业学习 -->

			<!-- 近期开班信息 -->
			<div class="com-lineTitle" style="margin-bottom: 10px;">
				<h2 style="width: 170px;">近期开班信息</h2>
			</div>
			<div class="com-radiusBoxTitle" style="margin-bottom: 0;">
				<div style="text-align: center;">
					<a href="${pageContext.request.contextPath}/index/resourceList?typeId=${xxmsList[0].type.id}" target="_blank">more
						<i class="fa fa-angle-down" aria-hidden="true"></i>
					</a>
				</div>
			</div>
			<div class="query_condition">
				<input type="text" class="course" placeholder="请输入课程名称"
					ng-model="QueryBuilder.Key" ng-keydown="myKeyup1($event)" /> <a
					class="query_link_1" ng-click="goToDetail()" id="sousuo">搜索近期开课</a>
				<a class="query_link_2" target="_blank"> <img
					src="${pageContext.request.contextPath}/resource/js/fore/Content/duke/images/index/headset.png" />免费试听
				</a>
				<div class="fast_track_entrance_xsee" style="margin: 7px 0;">
				</div>
			</div>
			<div class="offline-recommend-new">
				<div class="oneside" style="float:left; width: 530px; height: 100%;">
					<table>
						<thead>
							<tr
								style="height: 38px; background-color: #3b3b3b; color: white; font-size: 15px;">
								<th style="padding-left: 10px; width: 230px;">课程名称</th>
								<th style="width: 100px; text-align: center;">开课时间</th>
								<th style="width: 100px; text-align: center;">上课方式</th>
								<th style="width: 100px; text-align: center;">上课地点</th>
							</tr>
						</thead>
					</table>
					<div class="hd" style="height:26px; position:relative; text-align:center;">
						<span style="cursor: pointer;" class="next"><i class="fa fa-caret-up fa-2x"
							aria-hidden="true"></i></span> <span class="prev" style="position: absolute;top: 165px;left: 259px;"><i
							class="fa fa-caret-down fa-2x" aria-hidden="true"></i></span>
					</div>
					<ul class="bd">
						<c:forEach items="${xxmsList}" var="xxms">
							<li class="sideli" style="font-size: 14px;color: black;text-align: center;	height: 28px;line-height: 28px;list-style: none;margin-right: 0 !important;">
								<div class="sidelidiv"
									style="float:left; width: 229px; text-align: left; white-space: nowrap; word-break: keep-all; overflow: hidden; text-overflow: ellipsis;">
									<a target="_blank" href="${pageContext.request.contextPath}/index/resourceInfo?id=${xxms.id}"
										style="color: black;">${xxms.name}</a>
								</div>
								<fmt:parseDate value="${xxms.startDate}" pattern="yyyy-MM-dd" var="xxmsDate"/>
								<div class="sidelidiv" style="float:left; width: 100px;">
									<fmt:formatDate value="${xxmsDate}" pattern="MM月dd日"/>
								</div>
								<div class="sidelidiv" style="float:left; width: 100px;">线下面授</div>
								<div class="sidelidiv" style="float:left; width: 100px;">${xxms.location}</div>
							</li>
						</c:forEach>
					</ul>
				</div>
				<div class="oneside" style="float: right; width: 530px; height: 100%;">
					<table>
						<thead>
							<tr
								style="height: 38px; background-color: #3b3b3b; color: white; font-size: 15px;">
								<th style="padding-left: 10px; width: 230px;">课程名称</th>
								<th style="width: 100px; text-align: center;">开课时间</th>
								<th style="width: 100px; text-align: center;">上课方式</th>
								<th style="width: 100px; text-align: center;">上课地点</th>
							</tr>
						</thead>
					</table>
					<div class="hd" style="height:26px; position:relative; text-align:center;">
						<span style="cursor: pointer;" class="next"><i class="fa fa-caret-up fa-2x"
							aria-hidden="true"></i></span> <span class="prev" style="position: absolute;top: 165px;left: 259px;"><i
							class="fa fa-caret-down fa-2x" aria-hidden="true"></i></span>
					</div>
					<ul class="bd">
						<c:forEach items="${hdzbList}" var="zxxx">
							<li class="sideli" style="font-size: 14px;color: black;text-align: center;	height: 28px;line-height: 28px;list-style: none;margin-right: 0 !important;">
								<div class="sidelidiv"
									style="float:left; width: 229px; text-align: left; white-space: nowrap; word-break: keep-all; overflow: hidden; text-overflow: ellipsis;">
									<a target="_blank" href="${pageContext.request.contextPath}/index/resourceInfo?id=${zxxx.id}"
										style="color: black;">${zxxx.name }</a>
								</div>
								<fmt:parseDate value="${zxxx.startDate}" pattern="yyyy-MM-dd" var="zxxxDate"/>
								<div class="sidelidiv" style="float:left; width: 100px;">
									<fmt:formatDate value="${zxxxDate}" pattern="MM月dd日"/>
								</div>
								<div class="sidelidiv" style="float:left; width: 100px;">互动直播</div>
								<div class="sidelidiv" style="float:left; width: 100px;">在线</div>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<!-- 近期开班信息 -->

			<!-- 线上视频学习 -->
			<div class="com-lineTitle">
				<h2 style="width: 170px;">线上视频学习</h2>
			</div>
			<div class="new-video-col-main">
				<div class="new-video-slider">
					<ul id="new-video_slider_list"
						style="position: relative; left: 0px; width: 1200px; height: 180px;">
						<c:forEach items="${xsspList }" var="xssp">
							<li class="item_a first">
								<a target="_blank" class="product-image" href="${pageContext.request.contextPath}/index/resourceInfo?id=${xssp.id}"> 
									<img alt="${xssp.name }" src="${xssp.imageUrl }">
								</a>
								<div class="details_p">
									<a target="_blank" class="btn red_button" target="_blank" href="${pageContext.request.contextPath}/index/resourceInfo?id=${xssp.id}">点击试看</a>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
				<div id="new-video_left_but" class="box-left"></div>
				<div id="new-video_right_but" class="box-right"></div>
			</div>
			<!-- 线上视频学习 -->
			
			<!-- 培训新闻、原创文章 -->
			<div style="font-size: 14px; display: block; overflow: hidden;">
				<div class="col-md-6" style="padding-right: 60px">
					<div class=" lecturer_team_title" style="padding-top: 0px">
						<h2 style="width: 100px; font-size: 20px; font-weight: 500;">培训新闻</h2>
						<a
							style="position: absolute; margin-top: -25px; margin-left: 423px"
							target="_blank"
							href="${pageContext.request.contextPath}/index/newsList?typeId=${pxxwList[0].type.id}">更多&gt;&gt;</a>
					</div>
					<ul style="margin-top: 10px; padding: 0; list-style: none;">
						<!-- 培训新闻 -->
						<c:forEach items="${pxxwList}" var="pxxw">
							<li style="margin: 0; padding: 5px 3px; list-style: none;">
								<a class="homeindex_a"
								style="width: 402px; display: block; float: left; white-space: nowrap; word-break: keep-all; overflow: hidden; text-overflow: ellipsis; padding-right: 5px;"
								target="_blank"
								href="${pageContext.request.contextPath}/index/newsInfo?id=${pxxw.id}">
									<c:choose>
										<c:when test="${fn:length(pxxw.title) <= 26}">
											${pxxw.title}
										</c:when>
										<c:otherwise>
											${fn:substring(pxxw.title, 0, 26) }&nbsp;...
										</c:otherwise>
									</c:choose>
							</a> <fmt:parseDate value="${pxxw.addDate}"
									pattern="yyyy-MM-dd HH:mm:ss" var="pxxwDate" /> <span>
									<fmt:formatDate value="${pxxwDate}" pattern="MM月dd日" />
							</span>
							</li>
						</c:forEach>
						<!-- 培训新闻 -->
					</ul>
				</div>
				<div class="col-md-6" style="padding-left: 60px; list-style: none;">
					<div class=" lecturer_team_title" style="padding-top: 0px">
						<h2 style="width: 100px; font-size: 20px; font-weight: 500;">原创文章</h2>
						<a
							style="position: absolute; margin-top: -25px; margin-left: 423px"
							target="_blank"
							href="${pageContext.request.contextPath}/index/newsList?typeId=${ycwzList[0].type.id}">更多&gt;&gt;</a>
					</div>
					<ul style="margin-top: 10px; padding: 0; list-style: none;">
						<!-- 原创文章 -->
						<c:forEach items="${ycwzList}" var="ycwz">
							<li style="margin: 0; padding: 5px 3px;"><a
								class="homeindex_a"
								style="width: 402px; display: block; float: left; white-space: nowrap; word-break: keep-all; overflow: hidden; text-overflow: ellipsis; padding-right: 5px;"
								target="_blank"
								href="${pageContext.request.contextPath}/index/newsInfo?id=${ycwz.id}">
									<c:choose>
										<c:when test="${fn:length(ycwz.title) <= 26}">
											${ycwz.title}
										</c:when>
										<c:otherwise>
											${fn:substring(ycwz.title, 0, 26) }&nbsp;...
										</c:otherwise>
									</c:choose>
							</a> <fmt:parseDate value="${ycwz.addDate}"
									pattern="yyyy-MM-dd HH:mm:ss" var="ycwzDate" /> <span>
									<fmt:formatDate value="${ycwzDate}" pattern="MM月dd日" />
							</span></li>
						</c:forEach>
						<!-- 原创文章 -->
					</ul>
				</div>
			</div>
			<!-- 培训新闻、原创文章 -->
		</section>
	</div>

</div>

<!-- 底部版权 -->
<%@ include file="/WEB-INF/view/fore/common/footer.jspf"%>
