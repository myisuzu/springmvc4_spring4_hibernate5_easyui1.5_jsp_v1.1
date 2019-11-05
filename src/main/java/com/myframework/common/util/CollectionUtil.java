package com.myframework.common.util;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * 集合工具类
 * @author 马元
 * @date 2018年9月2日
 * @version 1.0
 */
@SuppressWarnings("all")
public class CollectionUtil {
	
	/**
	 * List转Set集合
	 * @param list
	 * @return
	 */
    public static <T extends Object> Set<T> list2Set(List<T> list) {   
    	// 具体实现看需求转换成不同的Set的子类。   
        Set<T> set = new HashSet<T>(list);   
        return set;   
    }
    
    /**
     * Set集合转List集合
     * @param set
     * @return
     */
    public static <T extends Object> List<T> set2List(Set<T> set) {   
    	// 需要在用到的时候另外写构造，根据需要生成List的对应子类。   
        List<T> list = new ArrayList<T>(set);   
        return list;   
    }
	
    /**
     * 多个List集合转Set集合
     * @param list
     * @return
     */
	public static <T extends Object> Set<T> list2Set(List<T>... list) {
		Set<T> set = new HashSet<T>();
		for (int i=0; i<list.length; i++) {
			set.addAll(list[i]);
		}
		return set;
	}
	
	/**
	 * Set集合转Integer数组
	 * @param set
	 * @return
	 */
	public static int[] set2IntArray(Set<Integer> set) {
		int[] array = new int[set.size()];
		Object[] os = set.toArray();
		for (int i=0; i<os.length; i++) {
			array[i] = (Integer)os[i];
		}
		return array;
	}
	
	public static Integer[] set2IntegerArray(Set<Integer> set) {
		Integer[] array = new Integer[set.size()];
		return set.toArray(array);
	}
	
	public static String[] set2StringArray(Set<String> set) {
		String[] array = new String[set.size()];
		return set.toArray(array);
	}
	
	public static Object[] list2Array(List<Object> oList) {   
		// TODO 需要在用到的时候另外写方法，不支持泛型的Array.   
        Object[] oArray = oList.toArray(new Object[] {});   
        return oArray;   
    }
	
	public static String[] stringList2Array(List<String> list) {
		return list.toArray(new String[] {});
	}
	
	public static Integer[] integerList2Array(List<Integer> list) {   
		// TODO 需要在用到的时候另外写方法，不支持泛型的Array.   
		Integer[] intArray = list.toArray(new Integer[]{});   
		return intArray;   
	}   
	
    public static Object[] set2Array(Set<Object> oSet) {   
    	// TODO 需要在用到的时候另外写方法，不支持泛型的Array.   
        Object[] oArray = oSet.toArray(new Object[] {});   
        return oArray;   
    }   
    
  
    public static <T extends Object> List<T> array2List(T[] tArray) {   
    	// TODO 单纯的asList()返回的tList无法add(),remove(),clear()等一些影响集合个数的操作，   
    	// 因为Arrays$ArrayList和java.util.ArrayList一样，都是继承AbstractList，   
    	// 但是Arrays$ArrayList没有override这些方法，而java.util.ArrayList实现了。   
    	// TODO 建议使用List的子类做返回，而不是Arrays$ArrayList。根据需要吧。如下行注释:   
    	// List<T> tList = new ArrayList<T>(Arrays.asList(tArray));   
        List<T> tList = Arrays.asList(tArray);   
        return tList;   
    }   
  
    public static <T extends Object> Set<T> array2Set(T[] tArray) {   
    	// TODO 没有一步到位的方法，根据具体的作用，选择合适的Set的子类来转换。   
        Set<T> tSet = new HashSet<T>(Arrays.asList(tArray));   
        return tSet;   
    }
    
    public static Integer[] intArray2IntegerArray(int[] intArray) {
    	Integer[] integerArray = new Integer[intArray.length]; 
    	for (int i=0; i<intArray.length; i++) {
    		integerArray[i] = intArray[i];
    	}
    	return integerArray;
    }
    
    public static Set<Integer> array2Set(int[] intArray) {
    	Integer[] integerArray = intArray2IntegerArray(intArray);
    	Set<Integer> set = new HashSet<Integer>(Arrays.asList(integerArray));
    	return set;
    }
    
    public static int[] array2RemoveRepeat(int[] intArray) {
    	return set2IntArray(array2Set(intArray2IntegerArray(intArray)));
    }

}
