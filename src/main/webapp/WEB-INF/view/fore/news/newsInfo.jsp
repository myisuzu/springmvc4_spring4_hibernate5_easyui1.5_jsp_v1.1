<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- 头部logo、导航 -->
<%@ include file="/WEB-INF/view/fore/common/header.jspf"%>

<div id="page" class="clearfix">

	<div class="content">
	
		<div style="width: 1200px; margin: 0px auto;">
		
			<!-- 左侧新闻正文 -->
			<div class="col-md-9 container_bj"
				style="padding-left: 0; padding-right: 10px;">
				<div class="bread-Crumbs">
					<a href="trainingnews.htm"
						tppabs="http://www.learnfuture.com/article/trainingnews"
						class="crumbs1"> <i class="fa fa-list-alt fa-lg"
						aria-hidden="true"
						style="color: rgb(193, 25, 31); font-size: 21px;"></i> ${news.type.name}
					</a> 
					<span class="arrow">></span> 
					<span class="crumbs2">${news.title} </span>
				</div>
				<div class="Dleft">
					<div>
						${news.content}
					</div>
				</div>
			</div>
			<!-- 左侧新闻正文 -->
			
			<!-- 右侧更多新闻 -->
			<div class="col-md-3 container_bj">
				<div class="Dright" style="padding-top: 50px">
					<div class="list_right_pushing">
						<span class="DSidetop">线上视频</span> 
						<a target="_blank" class="Dmore" href="${pageContext.request.contextPath}/index/resourceList?typeId=${xsspList[0].type.id}">更多>></a>
					</div>
					<div class="Dright1">
						<ul class="list-unstyled">
							<c:forEach items="${xsspList }" var="xssp">
								<li>
									<i class="fa fa-caret-right"> </i> 
									<a href="${pageContext.request.contextPath}/index/resourceInfo?id=${xssp.id}" target="_blank" class="SideBar">
										<span style="font-size: 12px">&nbsp;${xssp.name }</span>
									</a>
								</li>
							</c:forEach>
						</ul>
					</div>
					<div class="list_right_pushing">
						<span class="DSidetop">近期开班</span> 
						<a target="_blank" class="Dmore" href="${pageContext.request.contextPath}/index/resourceList?typeId=${xxmsList[0].type.id}">更多>></a>
					</div>
					<div class="Dright1">
						<ul class="list-unstyled">
							<c:forEach items="${xxmsList }" var="xxms">
								<li>
									<i class="fa fa-caret-right"> </i> 
									<a href="${pageContext.request.contextPath}/index/resourceInfo?id=${xxms.id}" target="_blank" class="SideBar">
										<span style="font-size: 12px">&nbsp;${xxms.name }</span>
									</a>
								</li>
							</c:forEach>
						</ul>
					</div>
					<div class="list_right_pushing">
						<span class="DSidetop">培训新闻</span> 
						<a target="_blank" class="Dmore" href="${pageContext.request.contextPath}/index/newsList?typeId=${pxxwList[0].type.id}">更多>></a>
					</div>
					<div class="Dright1">
						<ul class="list-unstyled">
							<c:forEach items="${pxxwList }" var="pxxw">
								<li>
									<i class="fa fa-caret-right"> </i> 
									<a href="${pageContext.request.contextPath}/index/newsInfo?id=${pxxw.id}" target="_blank" class="SideBar">
										<span style="font-size: 12px">&nbsp;${pxxw.title}</span>
									</a>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
			<!-- 右侧更多新闻 -->
			
		</div>
	</div>
</div>

<!-- 底部版权 -->
<%@ include file="/WEB-INF/view/fore/common/footer.jspf"%>

