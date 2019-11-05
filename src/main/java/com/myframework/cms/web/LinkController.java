package com.myframework.cms.web;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.myframework.cms.domain.Link;
import com.myframework.cms.service.LinkService;
import com.myframework.common.pojo.Msg;

/**
 * 友情链接
 * @author 马元
 * @date 2018年8月26日
 * @version 1.0
 */
@Controller
@RequestMapping("/cms/link")
public class LinkController {

	@Autowired
	private LinkService linkService;
	
	/**
	 * 请求列表页面
	 * @return
	 */
	@RequestMapping("/listUI")
	public String listUI() {
		return "back/cms/link/linkList";
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
		return linkService.getEasyUIDataGrid(pageNo, pageSize);
	}
	
	/**
	 * 请求添加或修改页面
	 * @return
	 */
	@RequestMapping("/saveUI")
	public String saveUI(HttpServletRequest request, @RequestParam(defaultValue="0") int id)
			 throws Exception {
		Link link = linkService.findById(id);
		request.setAttribute("link", link);
		return "back/cms/link/linkForm";
	}
	
	/**
	 * 添加
	 * @param link
	 */
	@RequestMapping("/add")
	@ResponseBody
	public Msg add(Link link) throws Exception {
		return linkService.add(link);
	}
	
	/**
	 * 修改
	 * @param link
	 */
	@RequestMapping("/update")
	@ResponseBody
	public Msg update(Link link) throws Exception {
		return linkService.update(link);
	}
	
	/**
	 * 删除
	 * @param id
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Msg delete(Integer[] id) throws Exception {
		return linkService.delete(id);
	}
	
}
