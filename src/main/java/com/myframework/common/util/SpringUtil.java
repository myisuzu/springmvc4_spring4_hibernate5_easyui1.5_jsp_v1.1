package com.myframework.common.util;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

/**
 * Spring工具类
 * @author 马元
 * @date 2018年9月2日
 * @version 1.0
 */
public class SpringUtil {

	/**
	 * 根据Spring配置文件中BeanId获取Bean对象
	 * @param request
	 * @param beanId
	 * @return
	 */
	public static Object getBean(HttpServletRequest request, String beanId) {
		Object obj = null;
		try {
			ServletContext sc = request.getSession().getServletContext();
			WebApplicationContext wac = WebApplicationContextUtils.getWebApplicationContext(sc);
			obj = wac.getBean(beanId);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return obj;
	}
}
