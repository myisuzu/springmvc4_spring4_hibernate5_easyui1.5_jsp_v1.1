package com.myframework.cms.web;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.myframework.cms.domain.Resource;
import com.myframework.cms.service.ResourceService;
import com.myframework.common.pojo.Msg;

/**
 * 资源管理
 * @author 马元
 * @date 2018年8月26日
 * @version 1.0
 */
@Controller
@RequestMapping("/cms/resource")
public class ResourceController {

	@Autowired
	private ResourceService resourceService;
	
	/**
	 * 请求列表页面
	 * @return
	 */
	@RequestMapping("/listUI")
	public String listUI() {
		return "back/cms/resource/resourceList";
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
			@RequestParam(name="rows", defaultValue="8") int pageSize,
			@RequestParam(defaultValue="0") int typeId) 
			throws Exception {
		return resourceService.getEasyUIDataGridByDataDictId(pageNo, pageSize, typeId);
	}
	
	/**
	 * 请求添加或修改页面
	 * @return
	 */
	@RequestMapping("/saveUI")
	public String saveUI(HttpServletRequest request, @RequestParam(defaultValue="0") int id) 
			throws Exception {
		Resource resource = resourceService.findById(id);
		request.setAttribute("resource", resource);
		return "back/cms/resource/resourceForm";
	}
	
	/**
	 * 请求视频观看页面
	 * @return
	 */
	@RequestMapping("/videoView")
	public String videoView(HttpServletRequest request, @RequestParam(defaultValue="0") int id) 
			 throws Exception {
		Resource resource = resourceService.findById(id);
		request.setAttribute("resource", resource);
		return "back/cms/resource/resourceVideoView";
	}
	
	/**
	 * 添加
	 * @param resource
	 */
	@RequestMapping("/add")
	@ResponseBody
	public Msg add(Resource resource) throws Exception {
		return resourceService.add(resource);
	}
	
	/**
	 * 修改
	 * @param resource
	 */
	@RequestMapping("/update")
	@ResponseBody
	public Msg update(Resource resource) throws Exception {
		return resourceService.update(resource);
	}
	
	/**
	 * 删除
	 * @param id
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Msg delete(Integer[] id) throws Exception {
		return resourceService.delete(id);
	}
	
}
