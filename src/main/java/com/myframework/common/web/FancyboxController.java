package com.myframework.common.web;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.myframework.common.pojo.Fancybox;
import com.myframework.common.service.FancyboxService;

/**
 * Fancybox（jQuery插件）数据处理Controller
 * @author 马元
 * @date 2018年9月9日
 * @version 1.0
 */
@Controller
@RequestMapping("/common/fancybox")
public class FancyboxController {
	
	@Autowired
	private FancyboxService fancyboxService;

	/**
	 * 请求Fancybox数据集合
	 * @param fileIdStr CommonFile的id值字符串，以逗号间隔（1,2,3...）
	 * @return
	 */
	@RequestMapping("/list")
	@ResponseBody
	public List<Fancybox> list(@RequestParam(defaultValue="") String fileIdStr) 
			 throws Exception {
		return fancyboxService.getList(fileIdStr);
	}
	
}
