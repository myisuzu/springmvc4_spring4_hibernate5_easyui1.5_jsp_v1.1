package com.myframework.common.pojo;

import java.util.HashMap;
import java.util.Map;
import com.myframework.common.util.Constant;

/**
 * 响应消息对象
 * @author 马元
 * @date 2018年9月2日
 * @version 1.0
 */
public class Msg {

	/**
	 * 响应状态码
	 */
    private int code;
    
    /**
     * 响应消息
     */
    private String msg;
    
    /**
     * 响应数据
     */
    private Map<String, Object> data = new HashMap<>();
    
    /**
     * 无参构造方法
     */
    public Msg() {}
    
    /**
     * 带参构造方法
     * @param code 状态码
     * @param msg 消息
     */
	private Msg(int code, String msg) {
		this.code = code;
		this.msg = msg;
	}
	
	/**
	 * 带参构造方法
	 * @param code 状态码
	 * @param msg 消息
	 * @param data 数据
	 */
	private Msg(int code, String msg, Map<String, Object> data) {
		this.code = code;
		this.msg = msg;
		this.data = data;
	}
	
	/**
	 * 返回无数据的成功消息对象
	 * @return
	 */
	public static Msg success() {
		return new Msg(Constant.STATUS_CODE_200, "success");
	}
	
	/**
	 * 返回有数据的成功消息对象
	 * @param data
	 * @return
	 */
	public static Msg success(Map<String, Object> data) {
		return new Msg(Constant.STATUS_CODE_200, "success", data);
	}
	
	/**
	 * 返回失败消息对象
	 * @return
	 */
	public static Msg fail() {
		return new Msg(Constant.STATUS_CODE_500, "failed");
	}
	
	/**
	 * 构造消息对象
	 * @param code 状态码
	 * @param msg 消息
	 * @return
	 */
    public static Msg build(int code, String msg) {
        return new Msg(code, msg);
    }
    
    /**
     * 构造消息对象
     * @param code 状态码
     * @param msg 消息
     * @param data 数据
     * @return
     */
    public static Msg build(int code, String msg, Map<String, Object> data) {
        return new Msg(code, msg, data);
    }
    
    /**
     * 向消息对象中添加响应数据
     * @param key
     * @param value
     * @return
     */
	public Msg add(String key, Object value) {
		this.data.put(key, value);
		return this;
	}

    //---------------------------------------------------------------------
    
    public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Map<String, Object> getData() {
		return data;
	}
	public void setData(Map<String, Object> data) {
		this.data = data;
	}
    
}
