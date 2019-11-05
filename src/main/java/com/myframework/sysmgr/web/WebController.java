package com.myframework.sysmgr.web;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.OutputStream;
import java.util.Random;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.myframework.common.util.VerifyCodeUtil;

/**
 * 页面跳转、验证码等通用Controller
 * @author 马元
 * @date 2018年8月25日
 * @version 1.0
 */
@Controller
@RequestMapping("/system/web")
public class WebController {
	
	/**
	 * 请求验证码
	 * @param request
	 * @param response
	 */
	@RequestMapping("/valicode")
	public void validatecode(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int width = 60;
		int height = 30;
		// 创建图片
		BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		Graphics g = image.getGraphics();
		// 设置背景颜色
		g.setColor(new Color(0xDCDCDC));
		g.fillRect(0, 0, width, height);
		// 绘制边框
		g.setColor(Color.black);
		g.drawRect(0, 0, width - 1, height - 1);
		// 创建随机数
		Random rdm = new Random();
		for (int i = 0; i < 50; i++) {
			int x = rdm.nextInt(width);
			int y = rdm.nextInt(height);
			g.drawOval(x, y, 0, 0);
		}
		// 生成随机验证码
		String capstr = VerifyCodeUtil.generateVerifyCode(4);
		request.getSession().setAttribute("code", capstr);
		g.setColor(new Color(0, 100, 0));
		g.setFont(new Font("Candara", Font.BOLD, 24));
		g.drawString(capstr, 8, 24);
		g.dispose();
		response.setContentType("image/jpeg");
		OutputStream strm = response.getOutputStream();
		ImageIO.write(image, "jpeg", strm);
		strm.close();
	}
	
	/**
	 * 请求主界面
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/main")
	public String main() {
		return "back/system/web/main";
	}

	/**
	 * 请求消息中心页面
	 * @return
	 */
	@RequestMapping("/messageCenterUI")
	public String messageCenterUI() {
		return "back/system/message/messageCenter";
	}
	
	/**
	 * 请求公共栏页面
	 * @return
	 */
	@RequestMapping("/ancemUI")
	public String ancemUI() {
		return "back/system/message/ancem";
	}
	
	/**
	 * 请求代办事宜页面
	 * @return
	 */
	@RequestMapping("/upcomUI")
	public String upcomUI() {
		return "back/system/message/upcom";
	}
	
	/**
	 * 请求警告页面
	 * @return
	 */
	@RequestMapping("/warnUI")
	public String warnUI() {
		return "back/system/message/warn";
	}

	/**
	 * 请求系统Bug反馈页面
	 * @return
	 */
	@RequestMapping("/bugUI")
	public String bugUI() {
		return "back/system/message/bug";
	}
	
}
