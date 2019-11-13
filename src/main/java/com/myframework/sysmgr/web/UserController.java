package com.myframework.sysmgr.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.myframework.common.pojo.Msg;
import com.myframework.common.util.ConfigUtil;
import com.myframework.common.util.FlexJsonUtil;
import com.myframework.common.web.CommonDisableController;
import com.myframework.sysmgr.domain.User;
import com.myframework.sysmgr.service.UserService;

/**
 * 用户管理Controller
 * @author 马元
 * @date 2018年8月25日
 * @version 1.0
 */
@Controller
@RequestMapping("/system/user")
public class UserController extends CommonDisableController<User> {
	
	@Autowired
	private UserService userService;
	
	/**
	 * 转向到登录页面
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/loginUI")
	public String loginUI() {
		return "back/system/web/login";
	}

	/**
	 * 用户登录
	 * @param request
	 * @param response
	 */
	@RequestMapping("/login")
	public void login(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String username = ServletRequestUtils.getStringParameter(request, "username", "");
		String password = ServletRequestUtils.getStringParameter(request, "password", "");
		
		//判断是否开启验证码
		if (ConfigUtil.verifyCodeOpenStatus) {
			String code = ServletRequestUtils.getStringParameter(request, "code"); 
			if (code == null || request.getSession() == null || !request.getSession().getAttribute("code").equals(code)) { 
				FlexJsonUtil.printPlain(response, "1");
				return;
			}
		}
		User user = userService.login(username, password);
		if (user == null) {
			FlexJsonUtil.printPlain(response, "2");
			return;
		}
		request.getSession().setAttribute("user", user);
		FlexJsonUtil.printPlain(response, "3");
	}
	
	/**
	 * 退出系统
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/logout")
	public String logout(HttpSession session) throws Exception {
		session.removeAttribute("user"); // 移除session中指定名称的属性
		return "back/system/web/login";
	}
	
	/**
	 * 请求列表页面
	 * @return
	 */
	@RequestMapping("/listUI")
	public String userListUI() {
		return "back/system/user/userList";
	}

	/**
	 * 请求列表json数据
	 * @param pageNo 当前页
	 * @param pageSize 每页记录数
	 */
	@RequestMapping("/list")
	@ResponseBody
	public Object userList(
			@RequestParam(name="page", defaultValue="1") int pageNo,
			@RequestParam(name="rows", defaultValue="10") int pageSize) 
			throws Exception {
		return userService.getPageBean(pageNo, pageSize);
	}
	
	/**
	 * 请求用户保存页面
	 * @return
	 */
	@RequestMapping("saveUI")
	public String saveUI() {
		return "back/system/user/userForm";
	}
	
	/**
	 * 验证用户名是否存在
	 * @param request
	 * @param response
	 */
	@RequestMapping("/usernameVerify")
	@ResponseBody
	public Object usernameVerify(String username) throws Exception {
		return userService.verifyExistsByColumnNameAndValue("username", username);
	}

	/**
	 * 添加
	 * @param user
	 */
	@RequestMapping("/add")
	@ResponseBody
	public Msg add(User user) throws Exception {
		return userService.add(user);
	}

	/**
	 * 修改
	 * @param user
	 */
	@RequestMapping("/update")
	@ResponseBody
	public Msg update(User user) throws Exception {
		return userService.update(user);
	}
	
	/**
	 * 初始化密码
	 * @param id
	 */
	@RequestMapping("/pwdInit")
	@ResponseBody
	public Msg pwdInit(Integer[] id) throws Exception {
		return userService.initPwd(id);
	}
	
	/**
	 * 修改密码
	 * @param session
	 * @param password
	 * @return
	 */
	@RequestMapping("/pwdUpdate")
	@ResponseBody
	public Object pwdUpdate(HttpSession session, String password) throws Exception {
		User user = (User)session.getAttribute("user");
		userService.updatePassword(user, password);
		return password;
	}
	
	/**
	 * 获取用户初始化密码
	 * @param request
	 * @param response
	 */
	@RequestMapping("/pwdInitValue")
	@ResponseBody
	public Object pwdInitValue() throws Exception {
		return ConfigUtil.userInitPwd;
	}
	
	/**
	 * 请求用户角色页面
	 * @return
	 */
	@RequestMapping("grantRoleUI")
	public String grantRoleUI() {
		return "back/system/user/userRoleForm";
	}
	
	/**
	 * 为用户分配角色
	 * @param user
	 */
	@RequestMapping("/grantRole")
	@ResponseBody
	public Msg grantRole(@RequestParam(defaultValue="0") int id, String[] roleId) 
			throws Exception {
		return userService.add(id, roleId);
	}
	
}
