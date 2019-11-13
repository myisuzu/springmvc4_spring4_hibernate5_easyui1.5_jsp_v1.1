package com.myframework.sysmgr.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.myframework.common.pojo.Msg;
import com.myframework.common.web.CommonMoveController;
import com.myframework.sysmgr.domain.Purview;
import com.myframework.sysmgr.domain.User;
import com.myframework.sysmgr.service.PurviewService;

/**
 * 权限管理Controller
 * @author 马元
 * @date 2018年8月25日
 * @version 1.0
 */
@Controller
@RequestMapping("/system/purview")
public class PurviewController extends CommonMoveController<Purview> {
	
	@Autowired
	private PurviewService purviewService;
	
	/**
	 * 请求列表页面
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/listUI")
	public String listUI() {
		return "back/system/purview/purviewList";
	}
	
	/**
	 * 请求列表json数据
	 * @param request
	 * @param response
	 */
	@RequestMapping("/list")
	@ResponseBody
	public Object list(HttpServletResponse response, 
			@RequestParam(defaultValue="0") int id,
			@RequestParam(name="page", defaultValue="1") int pageNo,
			@RequestParam(name="rows", defaultValue="10") int pageSize) 
			throws Exception {
		return purviewService.getEasyUIDataGridByPid(pageNo, pageSize, id);
	}
	
	/**
	 * 请求添加或修改页面
	 * @return
	 */
	@RequestMapping("/saveUI")
	public String saveUI() {
		return "back/system/purview/purviewForm";
	}
	
	/**
	 * 添加
	 * @param purview
	 */
	@RequestMapping("/add")
	@ResponseBody
	public Object add(Purview purview, 
			@RequestParam(defaultValue="0") int pid,
			@RequestParam(defaultValue="0") int elementId) 
			throws Exception {
		return purviewService.add(purview, pid, elementId);
	}
	
	/**
	 * 修改
	 * @param purview
	 */
	@RequestMapping("/update")
	@ResponseBody
	public Object update(Purview purview, 
			@RequestParam(defaultValue="0") int pid, 
			@RequestParam(defaultValue="0") int elementId) 
			throws Exception {
		return purviewService.update(purview, pid, elementId);
	}
	
	/**
	 * 删除
	 * @param id
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Msg delete(Integer[] id) throws Exception {
		return purviewService.disableZtreeEntity(id);
	}
	
	/**
	 * 请求EasyUICombotree组件json数据
	 * @param id
	 */
	@RequestMapping("/easyuiTreeJson")
	@ResponseBody
	public List<Map<String, Object>> easyuiTreeJson(@RequestParam(defaultValue="0") int id) 
			throws Exception {
		return purviewService.findEasyUITreeMapList(id);
	}
	
	/**
	 * 请求菜单列表数据JSON
	 * @param id
	 * @return
	 */
	@RequestMapping("/menuJson")
	@ResponseBody
	public List<Map<String, Object>> menuJson(
			HttpSession session,
			@RequestParam(defaultValue="0") int id) 
			throws Exception {
//		return purviewService.getZTreeMenuMapList(id);
		int userId = ((User)session.getAttribute("user")).getId();
		return purviewService.getZTreeMenuMapList(id, userId);
	}
	
	/**
	 * 请求ztree组件json数据
	 * @param id
	 */
	@RequestMapping("/ztreeJson")
	@ResponseBody
	public List<Map<String, Object>> ztreeJson(@RequestParam(defaultValue="0") int id) 
			throws Exception {
		Map<String, Object> otherColumnMap = new HashMap<>();
		otherColumnMap.put("is_menu", "isMenu");
		otherColumnMap.put("element_id", "elementId");
		return purviewService.findZTreeMapList(id, otherColumnMap);
	}
	
}
