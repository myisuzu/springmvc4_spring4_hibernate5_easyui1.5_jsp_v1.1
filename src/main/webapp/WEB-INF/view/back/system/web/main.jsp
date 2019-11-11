<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>XXX后台管理系统</title>
	<%@ include file="/WEB-INF/view/back/common/common.jspf" %>
	<%@ include file="/WEB-INF/view/back/common/jquery-easyui-1.5.jspf" %>
	<%@ include file="/WEB-INF/view/back/common/jquery-ztree-3.5.15.jspf" %>
	<script type="text/javascript">
		if (window.parent != window) {
			window.parent.location.href = window.location.href;
		}
		var moduleId;
		
		// 初始化ztree菜单设置
		var setting = {
			async: {enable:true, url:getMenuJson},		
			view: {dblClickExpand:false, showLine: true},
			data: {
				key: {title: "name"},
				simpleData: {enable:true, idKey:"id", pIdKey:"pid"}
			},
			callback: {onClick:onClick}  //onClick必须大写
		};
		$(function() {
			//初始化zTree
			$.ajax({
				url : "${pageContext.request.contextPath}/system/purview/menuJson",
				type : 'POST',
				dataType : 'text',
				success : function(data) {
					var zNodes = eval("(" + data + ")");
					tree = $.fn.zTree.init($("#ztree"), setting, zNodes);
				},
				error : function(msg) {
					alert('菜单加载异常!');
				}
			});
			//登录消息提示窗口
			$.messager.show({
				title : "消息提示",
				msg : "欢迎登录，${sessionScope.user.truename}",
				timeout : 5000,
				showType : "slide"
			});
			// 修改密码弹窗取消按钮
			$("#btnCancel").click(function(){
				$('#editPwdWindow').window('close');
			});
			// 登录弹窗取消按钮
			$("#login_btnCancel").click(function(){
				$('#loginWindow').window('close');
			});
			// 修改密码弹窗密码验证
			$("#btnEp").click(function() {
				var $newpass = $('#txtNewPass');
	            var $rePass = $('#txtRePass');
	
	            if ($newpass.val() == '') {
	            	$.messager.alert('系统提示', '请输入密码！', 'warning');
	                return false;
	            }
	            if ($rePass.val() == '') {
	            	$.messager.alert('系统提示', '请在一次输入密码！', 'warning');
	                return false;
	            }
	            if ($newpass.val() != $rePass.val()) {
	            	$.messager.alert('系统提示', '两次密码不一至！请重新输入', 'warning');
	                return false;
	            }
	            //修改密码,发出Ajax请求
	            $.post('${pageContext.request.contextPath}/system/user/pwdUpdate?password=' + $newpass.val(), function(data) {
	            	$.messager.alert('系统提示', '恭喜，密码修改成功！<br>您的新密码为：' + data, 'info');
	                $newpass.val('');
	                $rePass.val('');
	                $('#editPwdWindow').window('close');
	            })
			});
			// 登录弹窗确认按钮
			$("#login_btnEp").click(function() {
				var $username = $('#username');
	            var $password = $('#password');
	            
	            if ($username.val() == '') {
	            	$.messager.alert('系统提示', '请输入用户名！', 'warning');
	                return false;
	            }
	            if ($password.val() == '') {
	            	$.messager.alert('系统提示', '请输入密码！', 'warning');
	                return false;
	            }
	            //用户登录,发出Ajax请求
	            $.post(
	            	'${pageContext.request.contextPath}/system/user/login', 
	            	{'username':$username.val(), 'password':$password.val()},
	            	function(data) {
	            		if (data == 2) {
	            			//登录失败
	            			$("#tr_span").removeAttr("style");
	            		} else if (data == 3) {
	            			//登录成功
		                	$('#editPwdWindow').window('close');
		            		window.location.href = "${pageContext.request.contextPath}/system/web/main";
	            		} else {
		            		return;
	            		}
	            })
			});
			$("#tabs").tabs({
				onContextMenu : function(e, title) {
					if (title == "消息中心") {
						return;
					}
					e.preventDefault();
					$('#rcmenu').menu('show', {
			            left: e.pageX,
			            top: e.pageY
			        });
					$('#tabs').tabs('select', title);
				}
			});
		    //关闭当前标签页
		    $("#closecur").bind("click", function() {
		        var tab = $('#tabs').tabs('getSelected');
		        var index = $('#tabs').tabs('getTabIndex', tab);
		        if (index == 0) return;
		        $('#tabs').tabs('close',index);
		    });
		    //关闭所有标签页
		    $("#closeall").bind("click",function() {
		        var tablist = $('#tabs').tabs('tabs');
		        for(var i=tablist.length-1; i>0; i--) {
		            $('#tabs').tabs('close', i);
		        }
		    });
		    //关闭非当前标签页（先关闭右侧，再关闭左侧）
		    $("#closeother").bind("click",function() {
		        var tablist = $('#tabs').tabs('tabs');
		        var tab = $('#tabs').tabs('getSelected');
		        var index = $('#tabs').tabs('getTabIndex', tab);
		        for(var i=tablist.length-1; i>index; i--){
		            $('#tabs').tabs('close', i);
		        }
		        var num = index-1;
		        for(var i=num; i>0; i--){
		            $('#tabs').tabs('close', i);
		        }
		    });
		    //关闭当前标签页右侧标签页
		    $("#closeright").bind("click",function() {
		        var tablist = $('#tabs').tabs('tabs');
		        var tab = $('#tabs').tabs('getSelected');
		        var index = $('#tabs').tabs('getTabIndex', tab);
		        for(var i=tablist.length-1; i>index; i--) {
		            $('#tabs').tabs('close',i);
		        }
		    });
		    //关闭当前标签页左侧标签页
		    $("#closeleft").bind("click",function() {
		        var tab = $('#tabs').tabs('getSelected');
		        var index = $('#tabs').tabs('getTabIndex', tab);
		        var num = index-1;
		        for(var i=num; i>0; i--){
		            $('#tabs').tabs('close', i);
		        }
		    });
		});
		//点击树形菜单调用此方法
		/*
		function clickTree(event, treeId, treeNode, clickFlag) {
			if (treeNode.click != false) {
				addTab(treeNode.name, treeNode.page);
			}
		}
		*/
		function getMenuJson(treeId, treeNode) {
			if (treeNode == null) {
				return "${pageContext.request.contextPath}/system/purview/menuJson";
			}
			return "${pageContext.request.contextPath}/system/purview/menuJson?id="+treeNode.id;
		}			
		function onClick(e,treeId, treeNode){
			var zTree = $.fn.zTree.getZTreeObj(treeId);
			zTree.expandNode(treeNode);
			if (treeNode.path != null && treeNode.path != "") {
				moduleId = treeNode.id;
				addTab(treeNode.id, treeNode.name, treeNode.path);
			}
		}
		// 开启一个新的tab页面
		function addTab(id, text, path) {
			var url = "${pageContext.request.contextPath}/" + path + "?id="+id;
			
			if ($("#tabs").tabs('exists', text)) {
				$("#tabs").tabs('select', text);
				refreshTab({tabTitle:text,url:url});
			} else {
				var content = "<div style='width:100%;height:100%;overflow:hidden;'>"
						+ "<iframe src='"
						+ url
						+ "' scrolling='auto' style='width:100%;height:100%;border:0;'></iframe></div>";
				$('#tabs').tabs('add', {
					title : text,
					content : content,
					closable : true
				});
			}
		}
		function updateTab(text,url){
			var tab = $('#tabs').tabs('getSelected');
			var content = '<div style="width:100%;height:100%;overflow:hidden;">'
				+ '<iframe src="${pageContext.request.contextPath}/'
				+ url
				+ '" scrolling="auto" style="width:100%;height:100%;border:0;" ></iframe></div>';
			$('#tabs').tabs('update',{
				tab:tab,
				options: {
					title : text,
					content : content,
				} 
			});
		}
		function refreshTab(cfg) {
			var refresh_tab = cfg.tabTitle ? $('#tabs').tabs('getTab', cfg.tabTitle) : $('#tabs').tabs('getSelected');
			if (refresh_tab && refresh_tab.find('iframe').length > 0) {
				var _refresh_ifram = refresh_tab.find('iframe')[0];
				var refresh_url = cfg.url ? cfg.url : _refresh_ifram.src;
				// _refresh_ifram.src = refresh_url;
				_refresh_ifram.contentWindow.location.href = refresh_url;
			}
		}
		// 重新登录
		function login() {
			$("#loginWindow").window('open');
		}
		// 退出登录
		function logout() {
			$.messager.confirm('系统提示','您确定要退出本次登录吗?',function(isConfirm) {
				if (isConfirm) {
					window.location.href = "${pageContext.request.contextPath}/system/user/logout";
				}
			});
		}
		// 修改密码
		function editPassword() {
			$("#editPwdWindow").window('open');
		}
		// 联系管理员
		function showAbout(){
			$.messager.alert("后台管理系统v1.0","设计: 赛瑞格<br/> 管理员邮箱: srg@163.com <br/> QQ: 232323@qq.com");
		}
		//更换EasyUI主题的方法(themeName 主题名称)
		changeTheme = function(themeName) {
			var $easyuiTheme = $('#easyuiTheme');
			//var url = $easyuiTheme.attr('href');
			var url = "${pageContext.request.contextPath}/resource/js/back/easyui_1.5/themes/default/easyui.css";
			var href = url.substring(0, url.indexOf('themes')) + 'themes/' + themeName + '/easyui.css';
			$easyuiTheme.attr('href', href);
			var $iframe = $('iframe');
			if ($iframe.length > 0) {
				for ( var i = 0; i < $iframe.length; i++) {
					var ifr = $iframe[i];
					$(ifr).contents().find('#easyuiTheme').attr('href', href);
				}
			}
		};
		function getSessionId(){  
            var c_name = 'JSESSIONID';  
            if(document.cookie.length>0){  
               c_start=document.cookie.indexOf(c_name + "=")  
               if(c_start!=-1){   
                 c_start=c_start + c_name.length+1   
                 c_end=document.cookie.indexOf(";",c_start)  
                 if(c_end==-1) c_end=document.cookie.length  
                 return unescape(document.cookie.substring(c_start,c_end));  
               }  
            }  
        }
	</script>
</head>
<body class="easyui-layout">
	
	<!-- 右键弹出菜单 -->
    <div id="rcmenu" class="easyui-menu">
    	<div data-options="iconCls:'icon-cancel'" id="closecur">关闭</div>
    	<div id="closeall">关闭全部</div>
    	<div id="closeother">关闭其他</div>
    	<div class="menu-sep"></div>
    	<div id="closeright">关闭右侧标签页</div>
    	<div id="closeleft">关闭左侧标签页</div>
    </div> 

    <!--修改密码窗口(此窗口<div>如果放置到最后,那么将不能弹出密码窗口。原因是受center区域的<iframe>影响)-->
	<div id="editPwdWindow" class="easyui-window" style="width:300px; height:160px; padding:5px; background:#fafafa"
       data-options="closed:true, modal:true, shadow:true, icon:'icon-save', title:'修改密码', maximizable:'false', minimizable:'false', collapsible:'false'">
       <div class="easyui-layout" fit="true">
           <div region="center" border="false" style="padding: 10px; background: #fff; border: 1px solid #ccc;">
               <table cellpadding=3>
                   <tr>
                       <td>新密码：</td>
                       <td><input id="txtNewPass" type="Password" class="txt01" /></td>
                   </tr>
                   <tr>
                       <td>确认密码：</td>
                       <td><input id="txtRePass" type="Password" class="txt01" /></td>
                   </tr>
               </table>
           </div>
           <div region="south" border="false" style="text-align: right; height: 30px; line-height: 30px;">
               <a id="btnEp" class="easyui-linkbutton" icon="icon-ok" href="javascript:void(0)" >确定</a> 
               <a id="btnCancel" class="easyui-linkbutton" icon="icon-cancel" href="javascript:void(0)">取消</a>
           </div>
       </div>
   	</div>
   	
    <!--登录窗口(此窗口<div>如果放置到最后,那么将不能弹出密码窗口。原因是受center区域的<iframe>影响)-->
	<div id="loginWindow" class="easyui-window" style="width:300px; height:160px; padding:5px; background:#fafafa"
       data-options="closed:true, modal:true, shadow:true, icon:'icon-save', title:'用户登录', maximizable:'false', minimizable:'false', collapsible:'false'">
       <div class="easyui-layout" fit="true">
           <div region="center" border="false" style="padding: 10px; background: #fff; border: 1px solid #ccc;">
               <table cellpadding=3>
                   <tr>
                       <td>用户名：</td>
                       <td><input id="username" type="text" value="admin" class="txt01" /></td>
                   </tr>
                   <tr>
                       <td>密码：</td>
                       <td><input id="password" type="Password" value="123" class="txt01" /></td>
                   </tr>
                   <tr id="tr_span" style="display: none;">
                       <td></td>
                       <td><span style="color: red;">用户名或密码错误</span></td>
                   </tr>
               </table>
           </div>
           <div region="south" border="false" style="text-align: right; height: 30px; line-height: 30px;">
               <a id="login_btnEp" class="easyui-linkbutton" icon="icon-ok" href="javascript:void(0)" >确定</a> 
               <a id="login_btnCancel" class="easyui-linkbutton" icon="icon-cancel" href="javascript:void(0)">取消</a>
           </div>
       </div>
   	</div>
   	
	<!-- 北边区域 -->
    <div data-options="region:'north', border:false" 
		style="height:80px; padding:10px; background:url('${pageContext.request.contextPath}/resource/image/back/frame/header_bg.png') no-repeat right;">
    	<div style="padding-left:2px;">
			<img width="368" height="60" src="${pageContext.request.contextPath}/resource/image/back/frame/20190625173333.jpg" border="0">
		</div>
		<div id="sessionInfoDiv" style="position: absolute;right: 5px;top:10px;">
			[<strong id="strong1">${sessionScope.user.truename }</strong>]，欢迎你！
			&nbsp;&nbsp;您使用&nbsp;[<strong id="strong2">${pageContext.request.remoteAddr }</strong>]&nbsp;IP登录！
		</div>
		<div style="position: absolute; right: 5px; bottom: 10px; ">
			<a href="javascript:void(0);" class="easyui-menubutton"
				data-options="menu:'#layout_north_kzmbMenu',iconCls:'icon-help'">控制面板</a>
		</div>
		<div id="layout_north_pfMenu" style="width: 120px; display: none;">
			<div onclick="changeTheme('default');">default</div>
			<div onclick="changeTheme('gray');">gray</div>
			<div onclick="changeTheme('black');">black</div>
			<div onclick="changeTheme('bootstrap');">bootstrap</div>
			<div onclick="changeTheme('metro');">metro</div>
		</div>
		<div id="layout_north_kzmbMenu" style="width: 100px; display: none;">
			<div onclick="editPassword();">修改密码</div>
			<div onclick="showAbout();">联系管理员</div>
			<div class="menu-sep"></div>
			<div onclick="login();">重新登录</div>
			<div onclick="logout();">退出系统</div>
		</div>			
    </div>
    
    <!-- 南边区域 -->
    <div data-options="region:'south', border:false" 
    	style="height:40px; padding:10px; background:url('${pageContext.request.contextPath}/resource/image/back/frame/header_bg.png') no-repeat right;">
		<table style="width: 100%;">
			<tr>
				<td style="width: 400px;">
					<div style="color: #999; font-size: 8pt;">
						XXX有限公司 | Powered by <a target="_blank" href="http://www.xxx.com/">www.xxx.com</a>
					</div>
				</td>
			</tr>
		</table>	
    </div>
    
    <!-- 西边区域 -->
    <div data-options="region:'west', title:'导航菜单', split:true" style="width:260px;">
   		<ul id="ztree" class="ztree"></ul>
    </div>
    
    <!-- 中间区域 -->
    <div data-options="region:'center'">
		<div id="tabs" fit="true" class="easyui-tabs" border="false">
			<div title="消息中心" id="subWarp" style="width:100%;height:100%;overflow:hidden">
				<iframe src="${pageContext.request.contextPath}/system/web/messageCenterUI" style="width:100%;height:100%;border:0;"/>
			</div>
		</div>
    </div>
    
</body>
</html>