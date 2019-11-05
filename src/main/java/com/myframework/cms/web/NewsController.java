package com.myframework.cms.web;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.myframework.cms.domain.News;
import com.myframework.cms.service.NewsService;
import com.myframework.common.pojo.Msg;

/**
 * 新闻
 * @author 马元
 * @date 2018年8月26日
 * @version 1.0
 */
@Controller
@RequestMapping("/cms/news")
public class NewsController {

	@Autowired
	private NewsService newsService;
	
	/**
	 * 请求列表页面
	 * @return
	 */
	@RequestMapping("/listUI")
	public String listUI() {
		return "back/cms/news/newsList";
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
			@RequestParam(defaultValue="0") int typeId,
			@RequestParam(name="page", defaultValue="1") int pageNo,
			@RequestParam(name="rows", defaultValue="10") int pageSize) 
					 throws Exception {
		return newsService.getEasyUIDataGridByDataDictId(pageNo, pageSize, typeId);
	}
	
	/**
	 * 请求添加或修改页面
	 * @return
	 */
	@RequestMapping("/saveUI")
	public String saveUI(HttpServletRequest request, @RequestParam(defaultValue="0") int id) 
			 throws Exception {
		News news = newsService.findById(id);
		request.setAttribute("news", news);
		return "back/cms/news/newsForm";
	}
	
	/**
	 * 添加
	 * @param news
	 */
	@RequestMapping("/add")
	@ResponseBody
	public Msg add(News news) throws Exception {
		return newsService.add(news);
	}
	
	/**
	 * 修改
	 * @param news
	 */
	@RequestMapping("/update")
	@ResponseBody
	public Msg update(News news) throws Exception {
		return newsService.update(news);
	}
	
	/**
	 * 删除
	 * @param id
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Msg delete(Integer[] id) throws Exception {
		return newsService.delete(id);
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
		return newsService.move(id1, id2, sort1, sort2);
	}
	
}
