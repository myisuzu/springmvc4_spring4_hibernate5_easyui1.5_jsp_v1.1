package com.myframework.common.util;

/**
 * 数组工具类
 * @author 马元
 * @date 2018年9月2日
 * @version 1.0
 */
public class ArrayUtil {

	/**
	 * int数组转Integer数组
	 * @param intArray
	 * @return
	 */
	public static Integer[] intArray2IntegerArray(int[] intArray) {
		Integer[] integerArray = new Integer[intArray.length];
		for (int i = 0; i < intArray.length; i++) {
			integerArray[i] = intArray[i];
		}
		return integerArray;
	}

	/**
	 * 数字字符串数组转Integer数组
	 * @param strArray
	 * @return
	 */
	public static Integer[] stringArray2IntegerArray(String[] strArray) {
		Integer[] integerArray = new Integer[strArray.length];
		for (int i = 0; i < integerArray.length; i++) {
			integerArray[i] = Integer.parseInt(strArray[i]);
		}
		return integerArray;
	}
	
	public static int[] stringToInt(String[] strs) {
		int[] is = new int[strs.length];
		for (int i=0; i<strs.length; i++) {
			is[i] = Integer.parseInt(strs[i]);
		}
		return is;
	}

	/**
	 * 将int数组以逗号分割
	 * @param array
	 * @return
	 */
	public static String toString(int[] array) {
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < array.length; i++) {
			sb.append(array[i]);
			sb.append(",");
		}
		String str = sb.toString();
		return str.substring(0, str.length() - 1);
	}

	public static String toString(String[] array) {
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < array.length; i++) {
			sb.append(array[i]);
			sb.append(",");
		}
		String str = sb.toString();
		return str.substring(0, str.length() - 1);
	}

	public static String toString(int[] array, String sep) {
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < array.length; i++) {
			sb.append(array[i]);
			sb.append(sep);
		}
		String str = sb.toString();
		return str.substring(0, str.length() - 1);
	}

	public static String toString(String[] array, String sep) {
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < array.length; i++) {
			sb.append(array[i]);
			sb.append(sep);
		}
		String str = sb.toString();
		return str.substring(0, str.length() - 1);
	}

	public static int[] toIntArray(String arrays) {
		String[] tempArray = arrays.split(",");
		int[] array = new int[tempArray.length];
		for (int i = 0; i < tempArray.length; i++) {
			array[i] = Integer.parseInt(tempArray[i]);
		}
		return array;
	}

	public static String[] toStringArray(String arrays) {
		String[] tempArray = arrays.split(",");
		return tempArray;
	}

	public static int[] toIntArray(String arrays, String sep) {
		String[] tempArray = arrays.split(sep);
		int[] array = new int[tempArray.length];
		for (int i = 0; i < tempArray.length; i++) {
			array[i] = Integer.parseInt(tempArray[i]);
		}
		return array;
	}

	public static String[] toStringArray(String arrays, String sep) {
		String[] tempArray = arrays.split(sep);
		return tempArray;
	}
}
