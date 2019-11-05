package com.myframework.cms.web;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.myframework.cms.domain.Course;
import com.myframework.cms.domain.Image;
import com.myframework.cms.domain.Link;
import com.myframework.cms.domain.News;
import com.myframework.cms.domain.Resource;
import com.myframework.cms.service.CourseService;
import com.myframework.cms.service.ImageService;
import com.myframework.cms.service.LinkService;
import com.myframework.cms.service.NewsService;
import com.myframework.cms.service.ResourceService;
import com.myframework.common.pojo.HqlHelper;
import com.myframework.common.pojo.PageBean;
import com.myframework.common.util.Constant;
import com.myframework.sysmgr.service.DataDictService;

/**
 * 网站前台统一管理Controller
 * @author 马元
 * @date 2019年4月26日
 * @version 1.0
 */
@Controller
@RequestMapping("/")
public class IndexController {
	
	@Autowired
	private ImageService imageService;
	@Autowired
	private CourseService courseService;
	@Autowired
	private LinkService linkService;
	@Autowired
	private NewsService newsService;
	@Autowired
	private ResourceService resourceService;
	@Autowired
	private DataDictService dataDictService;
	
	/**
	 * 公共资源查询
	 * @param request
	 * @param response
	 */
	private void commResource(HttpServletRequest request) throws Exception {
		//查询首页全部课程集合
		List<Course> courseList = courseService.findTopList();
		request.setAttribute("courseList", courseList);
		
		//查询所有友情链接
		List<Link> linkList = linkService.findAll();
		request.setAttribute("linkList", linkList);
		
		//新闻-（培训新闻）
		List<News> pxxwList = newsService.findListByDataDictIdAndNumber(dataDictService.findIdByCode(Constant.NEWS_PXXW), 6);
		request.setAttribute("pxxwList", pxxwList);
		
		//资源-（开班信息-线下面授）
		List<Resource> xxmsList = resourceService.findListByDataDictIdAndNumber(dataDictService.findIdByCode(Constant.KCZY_XXMS), 6);
		request.setAttribute("xxmsList", xxmsList);
		
		//资源-（线上视频）
		List<Resource> xsspList = resourceService.findListByDataDictIdAndNumber(dataDictService.findIdByCode(Constant.KCZY_XXSP), 6);
		request.setAttribute("xsspList", xsspList);
		
	}

	/**
	 * 请求前台首页面
	 * @return
	 */
	@RequestMapping("/index.html")
	public String index(HttpServletRequest request) throws Exception {
		//公共资源查询
		commResource(request);
		
		//查询首页滚动图片集合
		List<Image> imageList = imageService.findAll();
		request.setAttribute("imageList", imageList);
		
		//新闻-（新品速递）
		List<News> xpsdList = newsService.findListByDataDictIdAndNumber(dataDictService.findIdByCode(Constant.NEWS_XPSD), 6);
		request.setAttribute("xpsdList", xpsdList);
		
		//新闻-（培训新闻）
		List<News> pxxwList = newsService.findListByDataDictIdAndNumber(dataDictService.findIdByCode(Constant.NEWS_PXXW), 5);
		request.setAttribute("pxxwList", pxxwList);
		
		//新闻-（原创文章）
		List<News> ycwzList = newsService.findListByDataDictIdAndNumber(dataDictService.findIdByCode(Constant.NEWS_YCWZ), 5);
		request.setAttribute("ycwzList", ycwzList);
		
		//资源-（开班信息-线下面授）
		List<Resource> xxmsList = resourceService.findListByDataDictId(dataDictService.findIdByCode(Constant.KCZY_XXMS));
		request.setAttribute("xxmsList", xxmsList);
		
		//资源-（开班信息-互动直播）
		List<Resource> hdzbList = resourceService.findListByDataDictId(dataDictService.findIdByCode(Constant.KCZY_HDZB));
		request.setAttribute("hdzbList", hdzbList);
		
		//资源-（线上视频）
		List<Resource> xsspList = resourceService.findListByDataDictId(dataDictService.findIdByCode(Constant.KCZY_XXSP));
		request.setAttribute("xsspList", xsspList);
		
		return "fore/index";
	}
	
	/**
	 * 请求前台全部课程详情
	 * @param request
	 * @param id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/index/courseInfo")
	public String courseInfo(HttpServletRequest request, int id) throws Exception {
		Course course = courseService.findById(id);
		request.setAttribute("course", course);
		
		//公共资源查询
		commResource(request);
		
		return "fore/course/courseInfo";
	}
	
	/**
	 * 请求前台新闻列表
	 * @param request
	 * @param pageNo 当前页
	 * @param pageSize 每页记录数
	 * @param typeId
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/index/newsList")
	public String newsList(
			HttpServletRequest request,
			@RequestParam(defaultValue="1") int pageNo,
			@RequestParam(defaultValue="15") int pageSize,
			@RequestParam(defaultValue="0") int typeId) 
			throws Exception {
		PageBean<News> pb = newsService.getPageBean(pageNo, pageSize, 
				new HqlHelper(News.class, "o").addWhereOrCondition("o.type.id=?", typeId));
		request.setAttribute("pb", pb);
		
		//公共资源查询
		commResource(request);
		
		return "fore/news/newsList";
	}
	
	/**
	 * 请求前台新闻详情
	 * @param request
	 * @param id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/index/newsInfo")
	public String newsInfo(HttpServletRequest request, int id) throws Exception {
		News news = newsService.findById(id);
		request.setAttribute("news", news);
		
		//公共资源查询
		commResource(request);
		
		return "fore/news/newsInfo";
	}
	
	/**
	 * 请求前台课程资源列表（近期开班、线上视频）
	 * @param request
	 * @param pageNo 当前页
	 * @param pageSize 每页记录数
	 * @throws Exception
	 */
	@RequestMapping("/index/resourceList")
	public String resourceList(
			HttpServletRequest request,
			@RequestParam(defaultValue="1") int pageNo,
			@RequestParam(defaultValue="15") int pageSize,
			@RequestParam(defaultValue="0") int typeId) 
					throws Exception {
		PageBean<Resource> pb = resourceService.getPageBean(pageNo, pageSize, 
				new HqlHelper(Resource.class, "o").addWhereOrCondition("o.type.id=?", typeId));
		request.setAttribute("pb", pb);
		
		//公共资源查询
		commResource(request);
		
		return "fore/resource/resourceList";
	}
	
	/**
	 * 请求前台课程资源详情（近期开班、线上视频）
	 * @param request
	 * @throws Exception
	 */
	@RequestMapping("/index/resourceInfo")
	public String resourceInfo(HttpServletRequest request, int id) throws Exception {
		Resource resource = resourceService.findById(id);
		request.setAttribute("resource", resource);

		//公共资源查询
		commResource(request);
		
		return "fore/resource/resourceInfo";
	}
	
}
