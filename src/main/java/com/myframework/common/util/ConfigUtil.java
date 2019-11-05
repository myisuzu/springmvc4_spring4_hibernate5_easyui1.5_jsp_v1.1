package com.myframework.common.util;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Properties;

/**
 * 配置文件读取工具类
 * @author 马元
 * @date 2018年9月2日
 * @version 1.0
 */
public class ConfigUtil {
	
	private static Properties prop;
	
	/**
	 * swf程序路径
	 */
	public static String swfToolsPath;
	
	/**
	 * openOffice程序路径
	 */
	public static String openOfficePath;
	
	/**
	 * 用户初始化密码
	 */
	public static String userInitPwd;
	
	/**
	 * 验证码状态(true:开启, false:关闭)
	 */
	public static boolean verifyCodeOpenStatus;
	
	private ConfigUtil(){}
	
	static {
		try {
			prop = new Properties();
			//加载配置文件
			prop.load(ConfigUtil.class.getResourceAsStream("/config.properties"));
			//读取参数
			swfToolsPath = prop.getProperty("swfToolsPath");
			openOfficePath = prop.getProperty("openOfficePath");
			userInitPwd = prop.getProperty("userInitPwd");
			verifyCodeOpenStatus = Boolean.getBoolean(prop.getProperty("verifyCodeOpenStatus"));
		} catch (IOException e) {
			e.printStackTrace();
			throw new RuntimeException("参数获取失败");
		}
	}
	
	public static String getValue(String key) {
		return prop.getProperty(key);
	}
	
	public static void setValue(OutputStream out, String key, String value) {
		try {
			prop.setProperty(key, value);
			prop.store(out, "这是备注信息");
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

}
