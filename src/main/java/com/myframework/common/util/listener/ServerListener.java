package com.myframework.common.util.listener;

import java.util.List;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import com.myframework.sysmgr.service.UserService;

/**
 * 服务器启动监听器（读取用户权限集合）
 * @author 马元
 * @date 2019年7月9日
 * @version 1.0
 */
public class ServerListener implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		//从ServletContext中获取Spring容器对象
		WebApplicationContext ac = WebApplicationContextUtils
				.getRequiredWebApplicationContext(sce.getServletContext());
		
		//获取用户权限集合，List<(ls,cms/image/listUI), (ls,cms/image/add)...>
		UserService userService = ac.getBean(UserService.class);
		List<String> userPurviewList = userService.findUserPurview();
		
		//将集合放入ServletContext的域属性空间
		sce.getServletContext().setAttribute("userPurviewList", userPurviewList);
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		
	}

}
