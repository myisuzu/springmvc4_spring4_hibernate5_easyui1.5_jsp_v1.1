package com.myframework.cms.web;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.myframework.cms.domain.Image;
import com.myframework.cms.service.ImageService;
import com.myframework.common.web.CommonAddUpdateDeleteMoveController;

/**
 * 学生管理Controller
 * @author 马元
 * @date 2018年8月26日
 * @version 1.0
 */
@Controller
@RequestMapping("/cms/image")
public class ImageController extends CommonAddUpdateDeleteMoveController<Image> {

	@Autowired
	private ImageService imageService;
	
	/**
	 * 请求列表页面
	 * @return
	 */
	@RequestMapping("/listUI")
	public String listUI() {
		return "back/cms/image/imageList";
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
		return imageService.getEasyUIDataGrid(pageNo, pageSize);
	}
	
	/**
	 * 请求添加或修改页面
	 * @return
	 */
	@RequestMapping("/saveUI")
	public String saveUI(HttpServletRequest request, @RequestParam(defaultValue="0") int id)
			 throws Exception {
		Image image = imageService.findById(id);
		request.setAttribute("image", image);
		return "back/cms/image/imageForm";
	}
	
}
