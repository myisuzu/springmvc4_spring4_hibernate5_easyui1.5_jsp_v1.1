package com.myframework.common.web;

import java.io.File;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.myframework.common.domain.CommonFile;
import com.myframework.common.pojo.Msg;
import com.myframework.common.service.FileService;
import com.myframework.common.util.DateUtil;
import com.myframework.common.util.FileUtil;
import com.myframework.common.util.WebUtil;

/**
 * 文件上传、下载等Controller
 * @author 马元
 * @date 2018年8月27日
 * @version 1.0
 */
@Controller
@RequestMapping("/common/file")
public class FileController {
	
	@Autowired
	private FileService fileService;
	
	/**
	 * 百度webuploader插件文件上传
	 * @return 返回上传文件的网络地址
	 */
	@RequestMapping("/webuploader/upload")
	@ResponseBody
	public Msg webuploaderUpload(HttpServletRequest request, MultipartFile uploadFile, CommonFile commonFile) 
			 throws Exception {
		int fileId = 0;
		String fileUrl = "";
		if (!uploadFile.isEmpty()) {
			/*
			 * 上传文件到磁盘
			 */
			//获取上传文件保存的绝对路径
			String filePath = request.getSession().getServletContext().getRealPath("/upload/" + DateUtil.getCurrentDateString("yyyyMMdd"));
			//创建上传文件保存的绝对路径的File类
			File destDir = new File(filePath);
			//如果文件目录不存在，则创建多级目录
			if (!destDir.exists()) {
				destDir.mkdirs();
			}
			//获取上传文件的名称
			String fileName = FileUtil.getFileName(uploadFile.getOriginalFilename());
			//组装文件访问的URL
			fileUrl = WebUtil.getWebPath(request) + "/upload/" + DateUtil.getCurrentDateString("yyyyMMdd") + "/" + fileName;
			//创建目标文件
			File destFile = new File(filePath, fileName);
			//文件上传
			uploadFile.transferTo(destFile);
			/*
			 * 保存文件信息到数据库
			 */
			commonFile.setUrl(fileUrl);
			fileId = fileService.addReturnId(commonFile);
		}
		return Msg.success().add("fileId", fileId).add("fileUrl", fileUrl);
	}
	
	/**
	 * 通用文件上传
	 * @return 返回上传文件的网络地址
	 */
	@RequestMapping("/general/upload")
	@ResponseBody
	public Msg generalUpload(HttpServletRequest request, MultipartFile uploadFile) 
			 throws Exception {
		int fileId = 0;
		String fileUrl = "";
		if (!uploadFile.isEmpty()) {
			/*
			 * 上传文件到磁盘
			 */
			//获取上传文件保存的绝对路径
			String filePath = request.getSession().getServletContext().getRealPath("/upload/" + DateUtil.getCurrentDateString("yyyyMMdd"));
			//创建上传文件保存的绝对路径的File类
			File destDir = new File(filePath);
			//如果文件目录不存在，则创建多级目录
			if (!destDir.exists()) {
				destDir.mkdirs();
			}
			//获取上传文件的名称
			String fileName = FileUtil.getFileName(uploadFile.getOriginalFilename());
			//组装文件访问的URL
			fileUrl = WebUtil.getWebPath(request) + "/upload/" + DateUtil.getCurrentDateString("yyyyMMdd") + "/" + fileName;
			//创建目标文件
			File destFile = new File(filePath, fileName);
			//文件上传
			uploadFile.transferTo(destFile);
			/*
			 * 保存文件信息到数据库
			 */
			CommonFile commonFile = new CommonFile();
			commonFile.setUrl(fileUrl);
			commonFile.setName(fileName);
			commonFile.setSize(String.valueOf(uploadFile.getSize()));
			commonFile.setType(uploadFile.getContentType());
			fileId = fileService.addReturnId(commonFile);
		}
		return Msg.success().add("fileId", fileId).add("fileUrl", fileUrl);
	}	
	
	/**
	 * 请求文件集合
	 * @param idStr id字符串（以逗号分隔: 1,2,3...）
	 * @return
	 */
	@RequestMapping("/list4Id")
	@ResponseBody
	public List<CommonFile> list4Id(@RequestParam(defaultValue="") String idStr) 
			 throws Exception {
		return fileService.findListByIdStr(idStr);
	}
	
	/**
	 * 请求文件集合
	 * @param urlStr url字符串（以逗号分隔）
	 * @return
	 */
	@RequestMapping("/list4Url")
	@ResponseBody
	public List<CommonFile> list4Url(@RequestParam(defaultValue="") String urlStr) 
			 throws Exception {
		return fileService.findListByFieldValueStr("url", urlStr);
	}
	
}
