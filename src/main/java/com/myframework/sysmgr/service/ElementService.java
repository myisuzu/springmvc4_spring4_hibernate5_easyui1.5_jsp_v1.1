package com.myframework.sysmgr.service;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.myframework.common.service.CommonService;
import com.myframework.common.util.FlexJsonUtil;
import com.myframework.sysmgr.dao.ElementDao;
import com.myframework.sysmgr.domain.Element;

@Service
public class ElementService extends CommonService<Element> {
	
	@Autowired
	private ElementDao elementDao;
	
	/**
	 * 查询某权限对应的按钮列表
	 * @param moduleId 权限id
	 * @return
	 */
	public String getElementButtonJson(int moduleId) {
		String json = "";
		try {
			List<Map<String, Object>> list = elementDao.findListByPurviewId(moduleId);
			if (list != null && list.size() > 0) {
				json = FlexJsonUtil.processList(list, "name", "remark");
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return json;
	}

}
