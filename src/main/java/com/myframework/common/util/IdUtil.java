package com.myframework.common.util;

import java.util.UUID;

/**
 * ID生成工具类
 * @author 马元
 * @date 2018年9月2日
 * @version 1.0
 */
public class IdUtil {

	/**
	 * 获取32位uuid字符串
	 * @return
	 */
	public static String getUUID() {
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
}
