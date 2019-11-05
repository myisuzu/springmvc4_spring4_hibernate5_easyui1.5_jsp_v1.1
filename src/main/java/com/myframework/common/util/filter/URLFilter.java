package com.myframework.common.util.filter;

import java.io.IOException;
import java.util.List;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.myframework.sysmgr.domain.User;

/**
 * 权限验证过滤
 * @author Administrator
 *
 */
@SuppressWarnings("all")
public class URLFilter extends AbstractFilter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) 
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)res;
		
		String url = request.getRequestURI();
		User user = (User)request.getSession().getAttribute("user");
		
		// 不管登录与否,所有用户都拥有以下权限
		if (
			//访问前台页面	
			url.startsWith("/index") ||
			//访问上传文件	
			url.startsWith("/upload") ||
			//登录页面请求验证码
			url.contains("/system/web/valicode") ||
			url.contains("/system/user/loginUI") ||
			url.contains("/system/user/login") ||
			url.contains("/system/user/logout") ||
			//请求资源文件
			url.contains("/resource")) {
			try {
				chain.doFilter(request, response);
			} catch (Exception e) {
				System.out.println("主机拒绝了IP:"+req.getRemoteAddr()+"的请求,因为客户端无访问权限!");
				e.printStackTrace();
			}
			return;
		// 如果用户访问不是以上权限，需要判断用户是否登录
		} else {
			//用户未登录或者session过期，转向到登录页面
			if (user == null) {
				System.out.println("主机拒绝了IP:" + req.getRemoteAddr() + "的请求,因为用户未登录或Session过期!");
				response.sendRedirect(request.getContextPath() + "/index.jsp");
				return;
			//用户已登录	
			} else {
				//超级管理员，拥有所有权限
				if ("admin".equals(user.getUsername())) {
					try {
						chain.doFilter(request, response);
					} catch (Exception e) {
						System.out.println("主机拒绝了IP:"+req.getRemoteAddr()+"的请求,因为客户端无访问权限!");
						e.printStackTrace();
					}
					return;
				//只要用户登录，就拥有以下权限	
				} else if (url.contains("/system/web/main") ||
					url.contains("/system/web/messageCenterUI") ||
					url.contains("/system/web/ancemUI") ||
					url.contains("/system/web/upcomUI") ||
					url.contains("/system/web/warnUI") ||
					url.contains("/system/web/bugUI") ||
					url.contains("/system/purview/menuJson") ||
					url.contains("/system/element/buttonJson") ||
					url.contains("/system/user/pwdUpdate")) {
					try {
						chain.doFilter(request, response);
					} catch (Exception e) {
						System.out.println("主机拒绝了IP:"+req.getRemoteAddr()+"的请求,因为客户端无访问权限!");
						e.printStackTrace();
					}
					return;
				// 如果访问不是以上权限url,需要判断用户是否拥有此权限
				} else {
					//获取用户权限集合
					List<String> userPurviewList = (List<String>)request.getSession().getServletContext().getAttribute("userPurviewList");
					//以逗号拼接用户名和url
					String str = user.getUsername() + "," + url.substring(1, url.length());
					//有权限，放行
					if (userPurviewList.contains(str) || 
						userPurviewList.contains(str + "UI") ||
						str.endsWith("/saveUI")
						) {
						chain.doFilter(request, response);
						return;
					//无权限，拦截
					} else {
						System.out.println("主机拒绝了IP:"+req.getRemoteAddr()+"的请求,因为客户端无访问权限!");
						//response.sendRedirect(request.getContextPath() + "/noPurview.jsp");
						request.getRequestDispatcher(request.getContextPath() + "/noPurview.jsp");
						return;
					}
				}
			}
		}
	}

}
