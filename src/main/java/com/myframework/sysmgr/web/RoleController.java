package com.myframework.sysmgr.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.myframework.common.pojo.Msg;
import com.myframework.sysmgr.domain.Role;
import com.myframework.sysmgr.service.RoleService;

/**
 * 角色管理Controller
 * @author 马元
 * @date 2018年8月25日
 * @version 1.0
 */
@Controller
@RequestMapping("/system/role")
public class RoleController {
	
	@Autowired
	private RoleService roleService;
	
	/**
	 * 请求列表页面
	 * @return
	 */
	@RequestMapping("/listUI")
	public String listUI() {
		return "back/system/role/roleList";
	}
	
	/**
	 * 请求列表
	 * @param response
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
		return roleService.getEasyUIDataGrid(pageNo, pageSize);
	}
	
	/**
	 * 请求添加或修改页面
	 * @return
	 */
	@RequestMapping("/saveUI")
	public String saveUI() {
		return "back/system/role/roleForm";
	}
	
	/**
	 * 添加
	 * @param role
	 */
	@RequestMapping("/add")
	@ResponseBody
	public Msg add(Role role) throws Exception {
		return roleService.add(role);
	}
	
	/**
	 * 修改
	 * @param role
	 */
	@RequestMapping("/update")
	@ResponseBody
	public Msg update(Role role) throws Exception {
		return roleService.update(role);
	}
	
	/**
	 * 删除
	 * @param id
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Msg delete(Integer[] id) throws Exception {
		return roleService.disable(id);
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
		return roleService.move(id1, id2, sort1, sort2);
	}
	
	/**
	 * 获取easyui-combotree组建的json数据
	 * 用于为用户分配角色时显示
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/combotreeJson")
	@ResponseBody
	public Object combotreeJson() throws Exception {
		return roleService.findEasyUIComboMapList();
	}
	
	/**
	 * 请求角色权限页面
	 * @return
	 */
	@RequestMapping("grantPurviewUI")
	public String grantPurviewUI() {
		return "back/system/role/rolePurviewForm";
	}	
	
	/**
	 * 为角色分配权限
	 * @param user
	 */
	@RequestMapping("/grantPurview")
	@ResponseBody
	public Msg grantPurview(@RequestParam(defaultValue="0") int id, String[] purviewId) 
			throws Exception {
		return roleService.add(id, purviewId);
	}
	
}
