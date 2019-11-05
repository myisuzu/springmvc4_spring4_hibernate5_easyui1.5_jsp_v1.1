package com.myframework.common.util;

import java.util.UUID;

/**
 * UUID工具类
 * @author 马元
 * @date 2019年7月18日
 * @version 1.0
 */
public class UUIDUtil {

	/**
	 * 生成指定长度的随机字符串
	 * @param len 字符串长度
	 * @return
	 */
	public static String generator(int len) {
		return UUID.randomUUID().toString().replaceAll("-", "").substring(0, len);
	}
	
}
