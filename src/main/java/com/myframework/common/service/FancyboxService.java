package com.myframework.common.service;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.myframework.common.dao.FileDao;
import com.myframework.common.domain.CommonFile;
import com.myframework.common.pojo.Fancybox;

@Service
public class FancyboxService {

	@Autowired
	private FileDao fileDao;

	/**
	 * 获取Fancybox数据集合
	 * @param fileIdStr CommonFile的id值字符串，以逗号间隔（1,2,3...）
	 * @return
	 */
	public List<Fancybox> getList(String fileIdStr) {
		List<Fancybox> list = new ArrayList<Fancybox>();
		try {
			//获取CommonFile对象集合
			List<CommonFile> fileList = fileDao.findListByIdStr(fileIdStr);
			if (fileList == null || fileList.size() < 1) {
				return list;
			}
			//构造FancyboxBean对象集合
			for (CommonFile file : fileList) {
				Fancybox fd = new Fancybox(file.getUrl(), "");
				list.add(fd);
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}
	
	
}
