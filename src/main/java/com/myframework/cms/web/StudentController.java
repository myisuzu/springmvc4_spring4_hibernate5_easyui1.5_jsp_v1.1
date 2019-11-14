package com.myframework.cms.web;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.myframework.cms.domain.Student;
import com.myframework.cms.service.StudentService;
import com.myframework.common.pojo.Msg;
import com.myframework.common.web.CommonDeleteMoveController;

/**
 * 学生管理
 * @author 马元
 * @date 2019年11月13日
 * @version 1.0
 */
@Controller
@RequestMapping("/cms/student")
public class StudentController extends CommonDeleteMoveController<Student> {

	@Autowired
	private StudentService studentService;
	
	/**
	 * 请求列表页面
	 * @return
	 */
	@RequestMapping("/listUI")
	public String listUI() {
		return "back/cms/student/studentList";
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
		return studentService.getEasyUIDataGrid(pageNo, pageSize);
	}
	
	/**
	 * 请求添加或修改页面
	 * @return
	 */
	@RequestMapping("/saveUI")
	public String saveUI(HttpServletRequest request, @RequestParam(defaultValue="0") int id)
			 throws Exception {
		Student student = studentService.findById(id);
		request.setAttribute("student", student);
		return "back/cms/student/studentForm";
	}
	
	/**
	 * 添加
	 * @param student
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/add")
	@ResponseBody
	public Msg add(Student student) throws Exception {
		return studentService.add(student);
	}
	
	/**
	 * 修改
	 * @param student
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/update")
	@ResponseBody
	public Msg update(Student student) throws Exception {
		return studentService.update(student);
	}	
	
}
