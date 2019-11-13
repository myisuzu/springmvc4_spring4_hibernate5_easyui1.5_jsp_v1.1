package com.myframework.cms.web;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.myframework.cms.domain.Classes;
import com.myframework.cms.service.ClassesService;
import com.myframework.common.web.CommonAddUpdateDeleteMoveController;

/**
 * 班级
 * @author 马元
 * @date 2019年11月13日
 * @version 1.0
 */
@Controller
@RequestMapping("/cms/classes")
public class ClassesController extends CommonAddUpdateDeleteMoveController<Classes> {

	@Autowired
	private ClassesService classesService;
	
	/**
	 * 请求列表页面
	 * @return
	 */
	@RequestMapping("/listUI")
	public String listUI() {
		return "back/cms/classes/classesList";
	}
	
	/**
	 * 请求列表json数据
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
		return classesService.getEasyUIDataGrid(pageNo, pageSize);
	}
	
	/**
	 * 请求添加或修改页面
	 * @return
	 */
	@RequestMapping("/saveUI")
	public String saveUI(HttpServletRequest request, @RequestParam(defaultValue="0") int id)
			 throws Exception {
		Classes classes = classesService.findById(id);
		request.setAttribute("classes", classes);
		return "back/cms/classes/classesForm";
	}
	
}
