package com.myframework.common.util;

import java.util.Random;

/**
 * 字符串工具类
 * @author 马元
 * @date 2018年9月2日
 * @version 1.0
 */
public class StringUtil {

	/**
	 * 随机生成文件名
	 * @param fileName
	 * @param length
	 * @return
	 */
	public static String getRandomFileName(String fileName, int length) {
		final char[] c = {'2','3','4','5','6','7','8','9','0','a','b','c','d','e','f','g','h','i','j','k','m','n','o',
				'p','q','r','s','t','u','v','w','x','y','z','A','B','C','D','E','F','G','H','J','K','L','M','N','O',
				'P','Q','R','S','T','U','V','W','X','Y','Z'};
		Random rd = new Random();
		StringBuffer sb = new StringBuffer(DateUtil.getCurrentDateString("yyyyMMddHHmmssSSS"));
		for (int i = 0; i < length; i++) {
			sb.append(c[rd.nextInt(c.length)]);
		}
		sb.append(fileName.substring(fileName.lastIndexOf("."), fileName.length()));
		return sb.toString();
	}

	/**
	 * 将字符串首字母变大写并返回
	 * @param name
	 * @return
	 */
	public static String toUpperCaseFirstLetter(String str) {
		return str.replaceFirst(str.substring(0, 1), str.substring(0, 1).toUpperCase());
	}
	
	/**
	 * 将字符串数组分隔为字符串
	 * @param array
	 * @param separator
	 * @return
	 */
	public static String join(String[] array, String separator) {
		if (array == null) return null;
		if (separator == null) return null;
		StringBuffer sb = new StringBuffer();
		for (int i=0; i<array.length; i++) {
			if (i > 0) {
				sb.append(separator);
			}
			if (array[i] != null) {
				sb.append("'" + array[i] + "'");
			}
		}
		return sb.toString();
	}

}
