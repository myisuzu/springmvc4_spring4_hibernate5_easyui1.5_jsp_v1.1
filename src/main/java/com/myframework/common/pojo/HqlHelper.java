package com.myframework.common.pojo;

import java.util.ArrayList;
import java.util.List;

public class HqlHelper {

	private String fromClause;			//from 子句
	private String whereClause = "";	//where 子句
	private String orderByClause = "";	//order by 子句
	private List<Object> paramList = new ArrayList<Object>();	//参数列表
	
	/**
	 * 生成from子句(用于没有where条件和order by条件的查询)
	 * @param clazz 查询类对象
	 */
	public HqlHelper(Class<?> clazz) {
		fromClause = "from " + clazz.getSimpleName();
	}
	
	/**
	 * 生成from子句(用于有where条件或order by条件的查询)
	 * @param clazz 查询类对象
	 * @param alias 别名
	 */
	public HqlHelper(Class<?> clazz, String alias) {
		fromClause = "from " + clazz.getSimpleName() + " " + alias;
	}
	
	/**
	 * 拼接Where子句（添加的多个过滤条件之间是使用AND连接的）
	 * @param append
	 * @param condition 一个过滤条件
	 * @param params 
	 * @return
	 */
	public HqlHelper addWhereCondition(String condition, Object... params) {
		if (whereClause.length() == 0) {
			whereClause += " where " + condition;
		} else {
			whereClause += " and " + condition;
		}
		
		if (params != null && params.length > 0) {
			for (Object param : params) {
				paramList.add(param);
			}
		}
		return this;
	}
	
	public HqlHelper addWhereOrCondition(String condition, Object... params) {
		if (whereClause.length() == 0) {
			whereClause += " where " + condition;
		} else {
			whereClause += " or " + condition;
		}
		
		if (params != null && params.length > 0) {
			for (Object param : params) {
				paramList.add(param);
			}
		}
		return this;
	}
	
	/**
	 * 如果第一个参数为true，则拼接Where子句
	 * @param append
	 * @param condition
	 * @param params
	 * @return
	 */
	public HqlHelper addWhereCondition(boolean append, String condition, Object... params) {
		if (append) {
			addWhereCondition(condition, params);
		}
		return this;
	}
	public HqlHelper addWhereOrCondition(boolean append, String condition, Object... params) {
		if (append) {
			addWhereOrCondition(condition, params);
		}
		return this;
	}
	
	/**
	 * 拼接OrderBy子句
	 * @param condition
	 * @param asc
	 * @return
	 */
	public HqlHelper addOrderByCondition(String condition, String asc) {
		if (orderByClause.length() == 0) {
			orderByClause += " order by " + condition + " " + asc;
		} else {
			orderByClause += ", " + condition + " " + asc;;
		}
		return this;
	}
	
	
	/**
	 * 如果第一个参数为true，则拼接OrderBy子句
	 * @param condition
	 * @param asc
	 * @return
	 */
	public HqlHelper addOrderByCondition(boolean append, String condition, String asc) {
		if (append) {
			addOrderByCondition(condition, asc);
		}
		return this;
	}
	
	/**
	 * 获取查询数据列表的的HQL语句
	 * @return
	 */
	public String getQueryListHql() {
		return fromClause + whereClause + orderByClause;
	}
	
	/**
	 * 获取查询总记录数的的HQL语句
	 * @return
	 */
	public String getQueryCountHql() {
		return "select count(*) " + fromClause + whereClause;
	}
	
	/**
	 * 返回参数集合
	 * @return
	 */
	public List<Object> getParamList() {
		return paramList;
	}
	
}
