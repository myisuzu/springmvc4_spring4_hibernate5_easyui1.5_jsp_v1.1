package com.myframework.sysmgr.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.myframework.common.pojo.Msg;
import com.myframework.common.service.CommonService;
import com.myframework.common.util.Constant;
import com.myframework.sysmgr.dao.ElementDao;
import com.myframework.sysmgr.dao.PurviewDao;
import com.myframework.sysmgr.domain.Purview;

@Service
public class PurviewService extends CommonService<Purview> {
	
	@Autowired
	private PurviewDao purviewDao;
	@Autowired
	private ElementDao elementDao;
	
	/**
	 * 添加
	 * @param purview 权限对象
	 * @param pid 父id
	 * @param elementId 元素id
	 * @return
	 */
	public Msg add(Purview purview, int pid, int elementId) {
		try {
			//更新父
			Purview parent = purviewDao.findById(pid);
			if (parent != null) {
				parent.setIsParent(Constant.TRUE);
			}
			//添加子
			purview.setParent(parent);
			purview.setElement(elementDao.findById(elementId));
			purviewDao.add(purview);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return Msg.success();
	}

	/**
	 * 更新
	 * @param purview 权限对象
	 * @param pid 父id
	 * @param elementId 元素id
	 * @return
	 */
	public Msg update(Purview purview, int pid, int elementId) {
		try {
			//更新父
			Purview parent = purviewDao.findById(pid);
			if (parent != null) {
				parent.setIsParent(Constant.TRUE);
			}
			//更新子
			Purview r = purviewDao.findById(purview.getId());
			r.setElement(elementDao.findById(elementId));
			r.setParent(parent);
			r.setName(purview.getName());
			r.setUrl(purview.getUrl());
			r.setIsParent(purview.getIsParent());
			r.setIsMenu(purview.getIsMenu());
			r.setRemark(purview.getRemark());
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return Msg.success();
	}	
	
	/**
	 * 获取菜单集合
	 * @param id
	 * @return
	 */
	public List<Map<String, Object>> getZTreeMenuMapList(int pid) {
		List<Map<String, Object>> list = null;
		try {
			Map<String, Object> columnMap = new HashMap<>();
			columnMap.put("id", null);
			columnMap.put("pid", null);
			columnMap.put("name", null);
			columnMap.put("url", "path");
			//columnMap.put("case url when '' then 'true' when null then 'true' else 'false' end isParent", null);
			columnMap.put("case when url = '' then 'true' when url is null then 'true' else 'false' end isParent", null);
			list = purviewDao.findMapListByPidAndMap(pid, columnMap);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}

}
