package com.myframework.common.util;

import java.util.Random;

/**
 * 验证码工具类
 * @author Administrator
 *
 */
public class VerifyCodeUtil {

	/**
	 * 随机生成n位字母数字组合验证码
	 * @param n
	 * @return
	 */
	public static String generateVerifyCode(int n) {
		String code = "";
		try {
			if (n < 1) {
				throw new RuntimeException("验证码不能小于1位");
			}
			// 创建随机数
			Random rdm = new Random();
			// 将整数转为8位16进制表示
			String hash = Integer.toHexString(rdm.nextInt());
			// 生成4位随机验证码
			code = hash.substring(0, n);
			// 判断4位随机验证码中是否包含0(零)或o(字母o)或O(字母O)
			int count = 0; //临时计数变量
			if (!verifyCode(code, n, count)) {
				return generateVerifyCode(n);
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return code;
	}

	/**
	 * 验证n位随机验证码中是否包含0(零)或o(字母o)或O(字母O)
	 * @param code 验证码字符串
	 * @param n 验证码位数
	 * @return true(通过)、false（不通过）
	 */
	private static boolean verifyCode(String code, int n, int count) {
		String shortCode = code.substring(count, count+1);
		if ("0".equals(shortCode) || "o".equals(shortCode) || "O".equals(shortCode)) {
			return false;
		} else {
			count++;
			if (count < n) {
				return verifyCode(code, n, count);
			}
		}
		return true;
	}
	
}
