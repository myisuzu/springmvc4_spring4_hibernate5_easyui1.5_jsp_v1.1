<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- 头部logo、导航 -->
<%@ include file="/WEB-INF/view/fore/common/header.jspf"%>
<%@ include file="/WEB-INF/view/fore/common/videojs-7.4.1.jspf"%>

<div id="page" class="clearfix">

	<div class="content">
		<link href="${pageContext.request.contextPath}/resource/js/fore/Content/new-detail.css" rel="stylesheet" />
		<script src="${pageContext.request.contextPath}/resource/js/fore/Content/duke/js/bootstrap-progressbar.min.js"></script>
		<div class="clearfix2" ng-controller="CourseNewCtrl">
			<div class="content">
				<div class="container current_position">
					<div class="bread-Crumbs">
						<a href="../offline.htm" class="crumbs1">
							<i class="fa fa-list-alt fa-lg" aria-hidden="true"
							style="color: rgb(193, 25, 31); font-size: 21px;"></i> 线下课堂
						</a> 
						<span class="arrow">></span> 
						<span class="crumbs2">${classes.name } </span>
					</div>
				</div>
			</div>

			<div id="blog" class="container container_bj interval_pm"
				style="margin-bottom: 0;" oncontextmenu="return false">
				<div class="blog">
					<div class="row">
						<div class="details2" style="padding-right: 15px; width: 44.4%; float: left; padding-left: 15px; position: relative;">
							<video id="my-video" class="video-js vjs-default-skin vjs-big-play-centered" 
								controls preload="auto" width="500" height="333" 
								poster="${pageContext.request.contextPath}/resource/js/fore/videojs-7.4.1/m.jpg">
								<source src="${pageContext.request.contextPath}/resource/js/fore/videojs-7.4.1/video/02.mp4" type="video/mp4">
							</video>
						</div>
						
						<div class="details-topcon-info"
							style="padding-right: 10px; width: 55.3%; float: right; padding-left: 15px; position: relative;">
							<h3 class="title_h3" style="font-size: 30px;">${classes.name }</h3>
							<div id="promotebox"
								style="display: none; position: absolute; height: 200px; width: 322px; z-index: 10; top: 245px; left: 310px; background: url(/Content/duke/images/index/floatcourse.png) no-repeat;">
							</div>
							<div class="shenzhen_north_course_list">
								<div class="online-bar">
									<span class="online-span">开班计划</span>
									<span class="online-hour" style="margin-left: 24px">时间：${classes.duration }</span>
								</div>
								<div class="online-div" style="background-color: #f9f9f9; padding-top: 10px;">
									<table style="width: 76%; color: black; margin-left: 3%;">
										<thead>
											<tr style="color: black; font-weight: bold;">
												<td style="width: 24%;">上课地点</td>
												<td style="width: 22%;">上课方式</td>
												<td style="width: 54%">预计上课时间</td>
											</tr>
										</thead>
										<tbody>
											<tr style="height: 25px;">
												<td>${classes.location }</td>
												<td>${classes.pattern}</td>
												<td>
													<div
														style="width: 250px; white-space: nowrap; word-break: keep-all; overflow: hidden; text-overflow: ellipsis;">
														<span title="2019/5/17、18">${classes.startDate }</span>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="container">
				<div class="row" style="background-color: white;">
					<div class="col-md-9  container_bj ">
						<ul id="myTab" class="nav nav-tabs row"
							style="background-color: #f9f9f9; border: none;">
							<li id="tabli0" class=" active" style="border: none;"><a
								href="#id-tab0" ng-click="goto('id-tab0',0)">课程介绍</a></li>
							<li id="tabli3" style="border: none;"><a
								ng-click="goto('id-tab3',3)">课程大纲</a></li>
						</ul>
						<div class="tab-content">
							<div id="id-tab0"
								class="course-tabcontent tab-pane fade in active">
								<div class="course-info">课程介绍</div>
								<div class="course-div">
									${classes.intro }									
								</div>
							</div>
							<div id="id-tab3"
								class="course-tabcontent tab-pane fade in active">
								<div class="course-info" >课程大纲</div>
								<div class="m-content">
									${classes.outline }
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 container_bj"
						style="background-color: #f9f9f9; border-left: 15px solid white; border-right: 15px solid white; padding: 0">


						<div class="ADright">
							<div class="Alist_right_pushing" ng-show="Course.Records">
								<div class="Aredline">
									<div class="Abigline">
										<span class="ADSidetop">同类课程推荐</span> <a class="ADmore"
											href="../articlelist/2.htm"
											tppabs="http://www.learnfuture.com/articlelist/2">more</a>
									</div>
								</div>
							</div>

							<div class="ADright1">
								<ul class="list-unstyled">
									<li ng-repeat="view in Course.Records"><a
										href="../Extend/Error404"
										tppabs="http://www.learnfuture.com/course/{{view.CourseCode}}"
										target="_blank" class="ASideBar"><span
											ng-bind-template="{{view.CourseName}}"></span></a></li>

								</ul>
							</div>

							<div class="Alist_right_pushing"
								ng-show="CanwayFreeClassArticle.Records">
								<div class="Aredline">
									<div class="Abigline2">
										<span class="ADSidetop">嘉为大讲堂</span> <a class="ADmore"
											href="../freeclass/search.htm"
											tppabs="http://www.learnfuture.com/freeclass/search">more</a>
									</div>
								</div>
							</div>
							<div class="ADright1">
								<ul class="list-unstyled">
									<li ng-repeat="view in CanwayFreeClassArticle.Records"><a
										href="javascript:if(confirm('http://www.learnfuture.com/Extend/Error500?aspxerrorpath=/freeclass/{{view.SimpleID}}  \n\nكτݾϞרԃ Teleport Ultra Ђ՘, ӲΪ һࠉԃ, ܲ؅ǺЂ՘, ܲЮĿܴݫֹͣc  \n\nţЫ՚ؾϱǷʏղߪ̼?'))window.location='http://www.learnfuture.com/Extend/Error500?aspxerrorpath=/freeclass/{{view.SimpleID}}'"
										tppabs="http://www.learnfuture.com/freeclass/{{view.SimpleID}}"
										target="_blank" class="ASideBar"><span
											ng-bind-template="【{{view.LocationName}}】{{view.Name}}"></span></a>
									</li>
								</ul>
							</div>
							<div class="Alist_right_pushing"
								ng-show="ShareArticleListsnew.Records">
								<div class="Aredline">
									<div class="Abigline3">
										<span class="ADSidetop">原创文章</span> <a class="ADmore"
											href="../article/search.htm"
											tppabs="http://www.learnfuture.com/article/search">more</a>
									</div>
								</div>
							</div>

							<div class="ADright1">
								<ul class="list-unstyled">
									<li ng-repeat="view in ShareArticleListsnew.Records"><a
										href="javascript:if(confirm('http://www.learnfuture.com/Extend/Error500?aspxerrorpath=/article/{{view.SimpleID}}  \n\nكτݾϞרԃ Teleport Ultra Ђ՘, ӲΪ һࠉԃ, ܲ؅ǺЂ՘, ܲЮĿܴݫֹͣc  \n\nţЫ՚ؾϱǷʏղߪ̼?'))window.location='http://www.learnfuture.com/Extend/Error500?aspxerrorpath=/article/{{view.SimpleID}}'"
										tppabs="http://www.learnfuture.com/article/{{view.SimpleID}}"
										target="_blank" class="ASideBar"><span
											ng-bind-template="{{view.Name}}"></span></a></li>

								</ul>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>

		<script type="text/javascript">
			$(function() {
				$("#showpromotebox").hover(function() {
					$("#promotebox").css("display", "block");
				}, function() {
					$("#promotebox").css("display", "none");
				});

			});
			//tab选项卡固定
			$(function() {
				var ie6 = /msie 6/i.test(navigator.userAgent), dv = $('#myTab'), st;
				dv.attr('otop', dv.offset().top); //存储原来的距离顶部的距离
				$(window).scroll(
						function() {
							st = Math.max(document.body.scrollTop
									|| document.documentElement.scrollTop);
							if (st >= parseInt(dv.attr('otop'))) {
								if (ie6) {//IE6不支持fixed属性，所以只能靠设置position为absolute和top实现此效果
									dv.css({
										position : 'absolute',
										top : st
									});
								} else if (dv.css('position') != 'fixed')
									dv.css({
										'position' : 'fixed',
										top : 0,
										'width' : '100%',
										'z-index' : 2
									});
							} else if (dv.css('position') != 'static')
								dv.css({
									'position' : 'static',
									'width' : '105%',
								});
						});
			});

			scoreFun($("#starttwo"), {
				fen_d : 36,//每一个a的宽度
				ScoreGrade : 5,//a的个数 10或者
				parent : "star_score_new"
			});
			$(document).ready(function() {
				$('.progress .progress-bar').progressbar({
					display_text : 'fill'
				});
			});

			function overLi() {
				$(".IsOnMouseOver").show()
			};
			function outLi() {
				$(".IsOnMouseOver").hide()
			};
			outLi();
			function htmlDecodeByRegExp(str) {
				var s = "";
				if (str.length == 0)
					return "";
				s = str.replace(/&amp;/g, "&");
				s = s.replace(/&lt;/g, "<");
				s = s.replace(/&gt;/g, ">");
				s = s.replace(/&nbsp;/g, " ");
				s = s.replace(/&#39;/g, "\'");
				s = s.replace(/&quot;/g, "\"");
				return s;
			};

			var IntroductionHtml = htmlDecodeByRegExp('');
			var CourseSellInfo = htmlDecodeByRegExp('');
			$("#id-courseInfo").append(IntroductionHtml);
			$("#id-courseSellInfo").append(CourseSellInfo);
		</script>

	</div>

</div>

<!-- 底部版权 -->
<%@ include file="/WEB-INF/view/fore/common/footer.jspf"%>

