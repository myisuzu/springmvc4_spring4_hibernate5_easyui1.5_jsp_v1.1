springmvc4_spring4_hibernate5_easyui1.5_jsp_v1.1
	* 技术架构：SpringMVC4、Hibernate5、Spring4、easyui1.5、JSP
	* 权限管理：用户只有登录权限验证，具有所有管理权限
	* 表单采用弹窗方式
	* 提供学生管理
		* 集成富文本编辑器（百度ueditor）
			* 将ueditor导入项目中，最好放置到项目根目录下
			* 将 实际目录/ueditor/jsp/lib/*.jar 放置到web项目中
			* 在页面中使用
				* 引入jQuery的js
				* 引入相关的js/css等
					* **/ueditor/ueditor.all.min.js
					* **/ueditor/ueditor.config.js
				* 提供一个带有ID属性值的文本域
				* 初始化文本域为富文本编辑器
			* 图片上传
				* 配置“/ueditor/jsp/config.json”这里面的所有以“UrlPrefix”为后缀的项，配置为“/项目名称”；如果直接访问项目，则不加“/项目名称”
		* 集成文件上传插件（百度WebUpload）	
			* 将webuploader导入项目webroot任意目录下
			* 在页面中使用
				* 引入jQuery的js
				* 引入相关的js/css等
					**/webuploader/webuploader.css
					**/webuploader/style.css
					**/webuploader/webuploader.js
					**/webuploader/upload.js
			* 在upload.js中配置回调方法等
		* 集成图片预览插件（fancybox）	
			* 将fancybox导入项目webroot任意目录下
			* 在页面中使用
				* 引入jQuery的js
				* 引入相关的js/css等
					**/fancybox/jquery.fancybox.js
					**/fancybox/lib/jquery.mousewheel-3.0.6.pack.js
					**/fancybox/helpers/jquery.fancybox-buttons.js
					**/fancybox/helpers/jquery.fancybox-thumbs.js
					**/fancybox/jquery.fancybox.css
					**/fancybox/helpers/jquery.fancybox-thumbs.css			
			
			
			
		* 相比1.0版本改动之处
			* 主界面 左侧全部采用ztree，不在使用easyui的导航栏目
			* 增加新的插件			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			