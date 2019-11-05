package com.myframework.common.util;

import javax.servlet.http.HttpServletRequest;

/**
 * Web相关操作的工具类
 * @author 马元
 * @date 2018年8月27日
 * @version 1.0
 */
public class WebUtil {

	/**
	 * 获取项目访问的根路径
	 * @param request
	 * @return
	 */
	public static String getWebPath(HttpServletRequest request) {
		try {
			String path = request.getContextPath();
			String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
			return basePath;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
}
