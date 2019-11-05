package com.myframework.common.util;

/**
 * 文件工具类
 * @author 马元
 * @date 2018年8月27日
 * @version 1.0
 */
public class FileUtil {

	/**
	 * 获取纳秒值作为文件名
	 * @param fileName 源文件名称（带后缀）
	 * @return
	 */
	public static String getFileName(String fileName) {
		return String.valueOf(System.nanoTime()) + fileName.substring(fileName.indexOf("."), fileName.length());
	}
	
	public static void main(String[] args) {
		System.out.println(FileUtil.getFileName("abc.jpg"));
		
	}
}
