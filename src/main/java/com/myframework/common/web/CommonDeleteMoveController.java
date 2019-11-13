package com.myframework.common.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.myframework.common.pojo.Msg;
import com.myframework.common.service.CommonService;

/**
 * 公共Controller（含有删除、上移下移方法）
 * @author 马元
 * @date 2019年11月13日
 * @version 1.0
 */
public class CommonDeleteMoveController<T> {

	@Autowired
	private CommonService<T> commonService;
	
	/**
	 * 删除
	 * @param id
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Msg delete(Integer[] id) throws Exception {
		return commonService.delete(id);
	}
	
	/**
	 * 上移、下移
	 * @param id1
	 * @param id2
	 * @param sort1
	 * @param sort2
	 */
	@RequestMapping("/move")
	@ResponseBody
	public Msg move(int id1, int id2, int sort1, int sort2) throws Exception {
		return commonService.move(id1, id2, sort1, sort2);
	}	
	
}
