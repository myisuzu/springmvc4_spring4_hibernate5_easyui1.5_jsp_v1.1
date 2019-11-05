package com.myframework.common.util;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import com.myframework.common.pojo.EasyUIDataGrid;
import com.myframework.common.pojo.PageBean;
import flexjson.JSONSerializer;

/**
 * FlexJson工具类
 * @author Administrator
 *
 */
public class FlexJsonUtil {
	
	/**
	 * 深度序列化PageBean
	 * @param pb
	 * @param excludeProperty
	 */
	public static String processPageBeanDeep(EasyUIDataGrid<?> pb, String... excludeProperty) {
		try {
			if (pb == null) return "";
			JSONSerializer js = new JSONSerializer();
			js.exclude("*.class");
			for (int i=0; i<excludeProperty.length; i++) {
				js.exclude("*." + excludeProperty[i]);
			}
			return js.deepSerialize(pb);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("PageBean JSON数据生成错误");
		}
	}
	
	/**
	 * 深度序列化PageModel
	 * @param pm
	 * @param excludeProperty
	 */
	public static String processPageModelDeep(PageBean<?> pm, String... excludeProperty) {
		try {
			if (pm == null) return "";
			JSONSerializer js = new JSONSerializer();
			js.exclude("*.class");
			for (int i=0; i<excludeProperty.length; i++) {
				js.exclude("*." + excludeProperty[i]);
			}
			return js.deepSerialize(pm);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("PageModel JSON数据生成错误");
		}
	}
	
	/**
	 * 序列化List
	 * @param list
	 * @param excludeProperty
	 * @return
	 */
	public static String processList(List<?> list) {
		try {
			if (list == null) return "";
			JSONSerializer js = new JSONSerializer();
			return js.serialize(list);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("List JSON数据生成错误");
		}
	}
	
	/**
	 * 深度序列化List
	 * @param list
	 * @param excludeProperty
	 * @return
	 */
	public static String processListDeep(List<?> list) {
		try {
			if (list == null) return "";
			JSONSerializer js = new JSONSerializer();
			return js.deepSerialize(list);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("List JSON数据生成错误");
		}
	}
	
	/**
	 * 序列化List
	 * @param response
	 * @param list
	 * @param excludeProperty
	 */
	public static String processList(List<?> list, String replaceName, String... excludeProperty) {
		try {
			if (list == null) return "";
			JSONSerializer js = new JSONSerializer();
			js.exclude("*.class");
			for (int i=0; i<excludeProperty.length; i++) {
				js.exclude("*." + excludeProperty[i]);
			}
			return js.serialize(list).replace(replaceName, "text");
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("List JSON数据生成错误");
		}
	}
	
	/**
	 * 深度序列化List
	 * @param list
	 * @param replaceName
	 * @param excludeProperty
	 * @return
	 */
	public static String processListDeep(List<?> list, String replaceName, String... excludeProperty) {
		try {
			if (list == null) return "";
			JSONSerializer js = new JSONSerializer();
			js.exclude("*.class");
			for (int i=0; i<excludeProperty.length; i++) {
				js.exclude("*." + excludeProperty[i]);
			}
			return js.deepSerialize(list).replace(replaceName, "text");
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("List JSON数据生成错误");
		}
	}
	
	/**
	 * 序列化对象
	 * @param obj
	 * @param excludeProperty
	 * @return
	 */
	public static String processObject(Object obj, String... excludeProperty){
		try {
			JSONSerializer js = new JSONSerializer();
			js.exclude("*.class");
			for(int i=0; i<excludeProperty.length; i++) {
				js.exclude("*."+excludeProperty[i]);
			}
			return js.serialize(obj);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 深度序列化对象
	 * @param obj
	 * @param excludeProperty
	 * @return
	 */
	public static String processObjectDeep(Object obj, String... excludeProperty){
		try {
			JSONSerializer js = new JSONSerializer();
			js.exclude("*.class");
			for(int i=0; i<excludeProperty.length; i++) {
				js.exclude("*." + excludeProperty[i]);
			}
			return js.deepSerialize(obj);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 将json发送到客户端浏览器
	 * @param response
	 * @param json
	 */
	public static void printJson(HttpServletResponse response, String json) {
		try {
			response.setContentType("text/json; charset=utf-8");
			response.getWriter().print(json);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 将json发送到客户端浏览器
	 * @param response
	 * @param json
	 */
	public static void printJson(HttpServletResponse response, int json) {
		try {
			response.setContentType("text/json; charset=utf-8");
			response.getWriter().print(json);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 将json发送到客户端浏览器
	 * @param response
	 * @param json
	 */
	public static void printJson(HttpServletResponse response, boolean json) {
		try {
			response.setContentType("text/json; charset=utf-8");
			response.getWriter().print(json);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 将普通文本发送到客户端浏览器
	 * @param response
	 * @param plain
	 */
	public static void printPlain(HttpServletResponse response, String plain) {
		try {
			response.setContentType("text/plain; charset=utf-8");
			response.getWriter().print(plain);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
}
