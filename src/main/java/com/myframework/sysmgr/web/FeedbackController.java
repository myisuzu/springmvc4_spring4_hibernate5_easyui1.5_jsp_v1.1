package com.myframework.sysmgr.web;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.myframework.common.pojo.EasyUIDataGrid;
import com.myframework.common.pojo.Msg;
import com.myframework.common.util.FlexJsonUtil;
import com.myframework.sysmgr.domain.Feedback;
import com.myframework.sysmgr.domain.User;
import com.myframework.sysmgr.service.FeedbackService;

/**
 * 留言反馈管理Controller
 * @author 马元
 * @date 2018年8月25日
 * @version 1.0
 */
@Controller
@RequestMapping("/system/feedback")
public class FeedbackController {
	
	@Autowired
	private FeedbackService feedbackService;
	
	/**
	 * 请求列表页面
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/listUI")
	public String listUI() {
		return "back/system/feedback/feedbackList";
	}
	
	/**
	 * 请求列表
	 * @param request
	 * @param response
	 */
	@RequestMapping("/list")
	public void list(HttpServletResponse response,
			@RequestParam(name="page", defaultValue="1") int pageNo,
			@RequestParam(name="rows", defaultValue="10") int pageSize) 
			throws Exception {
		EasyUIDataGrid<Feedback> pb = feedbackService.getEasyUIDataGrid(pageNo, pageSize);
		FlexJsonUtil.printJson(response, FlexJsonUtil.processPageBeanDeep(pb, "organ", "role", "groupSet", "purviewUrlList"));
	}
	
	/**
	 * 添加
	 * @param session
	 * @param feedback
	 */
	@RequestMapping("/add")
	@ResponseBody
	public Msg add(HttpSession session, Feedback feedback) throws Exception {
		User user = (User) session.getAttribute("user");
		feedback.setUser(user);
		return feedbackService.add(feedback);
	}
	
	/**
	 * 删除
	 * @param id
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Msg delete(Integer[] id) throws Exception {
		return feedbackService.delete(id);
	}
	
}
