package com.myframework.sysmgr.web;

import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.myframework.common.pojo.Msg;
import com.myframework.sysmgr.domain.Element;
import com.myframework.sysmgr.service.ElementService;

/**
 * 页面按钮元素管理Controller
 * @author 马元
 * @date 2018年8月25日
 * @version 1.0
 */
@Controller
@RequestMapping("/system/element")
public class ElementController {
	
	@Autowired
	private ElementService elementService;
	
	/**
	 * 请求列表页面
	 * @return
	 */
	@RequestMapping("/listUI")
	public String listUI() {
		return "back/system/element/elementList";
	}
	
	/**
	 * 请求列表
	 * @param response
	 * @param pageNo 当前页
	 * @param pageSize 每页记录数
	 * @return
	 */
	@RequestMapping("/list")
	@ResponseBody
	public Object list(
			@RequestParam(name="page", defaultValue="1") int pageNo,
			@RequestParam(name="rows", defaultValue="10") int pageSize) 
			throws Exception {
		return elementService.getEasyUIDataGrid(pageNo, pageSize);
	}
	
	/**
	 * 请求添加或修改页面
	 * @return
	 */
	@RequestMapping("/saveUI")
	public String saveUI() {
		return "back/system/element/elementForm";
	}
	
	/**
	 * 添加
	 * @param element
	 */
	@RequestMapping("/add")
	@ResponseBody
	public Msg add(Element element) throws Exception {
		return elementService.add(element);
	}
	
	/**
	 * 修改
	 * @param element
	 */
	@RequestMapping("/update")
	@ResponseBody
	public Msg update(Element element) throws Exception {
		return elementService.update(element);
	}
	
	/**
	 * 删除
	 * @param id
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Msg delete(Integer[] id) throws Exception {
		return elementService.delete(id);
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
		return elementService.move(id1, id2, sort1, sort2);
	}
	
	/**
	 * 查询用户对应的权限板块列表中对应的权限页面元素(按钮)
	 * 比如:用户在组织管理列表中拥有增加、修改的按钮(权限),没有删除按钮(权限)
	 * @param moduleId 板块id,比如：组织管理、用户管理.不同的板块对应不同的按钮
	 * @param moduleUrl
	 */
	@RequestMapping("/buttonJson")
	@ResponseBody
	public Object buttonJson(@RequestParam(defaultValue="0") int moduleId) 
			throws Exception {
		return elementService.getElementButtonJson(moduleId);
	}
	
	/**
	 * 获取easyui-combotree组建的json数据
	 * 用于增加、修改权限时为权限指定页面元素类别
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/combotreeJson")
	@ResponseBody
	public Object combotreeJson() throws Exception {
		Map<String, Object> columnMap = new HashMap<>();
		columnMap.put("id", null);
		columnMap.put("name", "text");
		//可以不加，加上则combotree列有图标
		columnMap.put("(select name from t_system_datadict where id = style_id)", "iconCls");
		return elementService.findMapListByMap(columnMap);
	}
	
}
