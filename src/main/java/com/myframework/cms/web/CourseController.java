package com.myframework.cms.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.myframework.cms.domain.Course;
import com.myframework.cms.service.CourseService;
import com.myframework.common.pojo.EasyUIDataGrid;
import com.myframework.common.pojo.Msg;
import com.myframework.common.util.FlexJsonUtil;

/**
 * 首页全部课程
 * @author 马元
 * @date 2019年6月11日
 * @version 1.0
 */
@Controller
@RequestMapping("/cms/course")
public class CourseController {
	
	@Autowired
	private CourseService courseService;
	
	/**
	 * 请求列表页面
	 * @return
	 */
	@RequestMapping("/listUI")
	public String listUI() {
		return "back/cms/course/courseList";
	}
	
	/**
	 * 请求列表json数据
	 * @param response
	 * @param id
	 * @param pageNo 当前页
	 * @param pageSize 每页记录数
	 */
	@RequestMapping("/list")
	public void list(HttpServletResponse response, 
			@RequestParam(defaultValue="0") int id,
			@RequestParam(name="page", defaultValue="1") int pageNo,
			@RequestParam(name="rows", defaultValue="10") int pageSize)
			throws Exception {
		EasyUIDataGrid<Course> pb = courseService.getEasyUIDataGridByPid(pageNo, pageSize, id);
		FlexJsonUtil.printJson(response, FlexJsonUtil.processPageBeanDeep(pb, "children"));
	}
	
	/**
	 * 请求添加或修改页面
	 * @return
	 */
	@RequestMapping("/saveUI")
	public String saveUI(HttpServletRequest request, @RequestParam(defaultValue="0") int id) 
			 throws Exception {
		Course course = courseService.findById(id);
		request.setAttribute("course", course);
		return "back/cms/course/courseForm";
	}
	
	/**
	 * 添加
	 * @param course
	 */
	@RequestMapping("/add")
	@ResponseBody
	public Object add(Course course, @RequestParam(defaultValue="0") int pid) throws Exception {
		return courseService.add(course, pid);
	}
	
	/**
	 * 修改
	 * @param course
	 */
	@RequestMapping("/update")
	@ResponseBody
	public Object update(Course course, @RequestParam(defaultValue="0") int pid) throws Exception {
		return courseService.update(course, pid);
	}
	
	/**
	 * 删除
	 * @param id
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Msg delete(Integer[] id) throws Exception {
		return courseService.deleteZtreeEntity(id);
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
		return courseService.move(id1, id2, sort1, sort2);
	}
	
	/**
	 * 请求ztree结构的课程列表
	 * @param id
	 */
	@RequestMapping("/ztreeJson")
	@ResponseBody
	public Object ztreeListJson(@RequestParam(defaultValue="0") int id) throws Exception {
		return courseService.findZTreeMapList(id);
	}
	
	/**
	 * 请求EUtree结构的课程列表
	 * @param id
	 */
	@RequestMapping("/easyuiTreeJson")
	@ResponseBody
	public Object easyuiTreeJson(@RequestParam(defaultValue="0") int id) throws Exception {
		return courseService.findEasyUITreeMapList(id);
	}
	
}
