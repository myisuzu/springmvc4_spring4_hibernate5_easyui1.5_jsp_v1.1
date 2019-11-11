package com.myframework.common.util.filter;

import java.io.IOException;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import com.myframework.sysmgr.domain.User;
import com.myframework.sysmgr.service.ElementService;

/**
 * 权限按钮处理
 * @author 马元
 * @date 2019年7月14日
 * @version 1.0
 */
public class MenuFilter extends URLFilter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) 
			throws IOException, ServletException {
		
		//Servlet协议转Http协议
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)res;
		
		//获取客户端请求的url
		String url = request.getRequestURI();
		
		//如果以“/listUI”结尾的权限url，则需要查询子权限集合的按钮
		if (url.endsWith("/listUI")) {
			//从ServletContext中获取Spring容器对象
			WebApplicationContext ac = WebApplicationContextUtils
					.getRequiredWebApplicationContext(request.getSession().getServletContext());
			
			//获取当前权限id
			int id = Integer.parseInt(request.getParameter("id"));
			//获取当前登录用户id
			int userId = ((User)request.getSession().getAttribute("user")).getId();
			
			//获取当前权限的子权限按钮集合的json数据
			ElementService elementService = ac.getBean(ElementService.class);
			String toolbar = elementService.getElementButtonJson(id, userId);
			request.setAttribute("toolbar", toolbar);
		}
		
		chain.doFilter(request, response);
	}
}
