package com.myframework.common.pojo;

import java.util.List;

/**
 * EasyUI-DataGrid组件数据格式对象
 * @author 马元
 * @date 2018年9月2日
 * @version 1.0
 */
public class EasyUIDataGrid<T> {

	/**
	 * 总记录数
	 */
	private int total;
	
	/**
	 * 结果集
	 */
	private List<T> rows;

	public EasyUIDataGrid(int total, List<T> rows) {
		this.total = total;
		this.rows = rows;
	}
	
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public List<T> getRows() {
		return rows;
	}
	public void setRows(List<T> rows) {
		this.rows = rows;
	}

}
