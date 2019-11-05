package com.myframework.sysmgr.service;

import java.util.Arrays;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.myframework.common.pojo.Msg;
import com.myframework.common.service.CommonService;
import com.myframework.common.util.Constant;
import com.myframework.common.util.UUIDUtil;
import com.myframework.sysmgr.dao.DataDictDao;
import com.myframework.sysmgr.domain.DataDict;

@Service
public class DataDictService extends CommonService<DataDict> {
	
	@Autowired
	private DataDictDao dataDictDao;
	
	/**
	 * 添加数据字典
	 * @param dataDict
	 * @param pid
	 */
	public Msg add(DataDict dataDict) {
		try {
			//增加二级
			if (dataDict.getParent() != null && 
				dataDict.getParent().getId() != null && 
				dataDict.getParent().getId() != 0) {
				//设置编码
				dataDict.setState(Constant.EASYUI_TREE_STATE_OPEN);
				dataDict.setCode(getNextCode(dataDict.getParent().getId()));
				dataDictDao.add(dataDict);
			//增加一级
			} else {
				dataDict.setParent(null);
				dataDict.setState(Constant.EASYUI_TREE_STATE_CLOSED);
				dataDict.setCode(UUIDUtil.generator(6));
				dataDictDao.add(dataDict);
			}
			return Msg.success();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 获取二级数据字典的短编码值
	 * @param pid
	 * @return
	 */
	public String getNextCode(int pid) {
		String code = "";
		try {
			DataDict parent = dataDictDao.findById(pid);
			List<DataDict> childList = dataDictDao.findListByPid(pid);
			if (childList == null || childList.size() == 0) {
				return parent.getCode() + "_01";
			}
			int[] intCodes = new int[childList.size()];
			for (int i=0; i<childList.size(); i++) {
				int codeInt = Integer.parseInt(childList.get(i).getCode().substring(childList.get(i).getCode().indexOf("_") + 1));
				intCodes[i] = codeInt;
			}
			Arrays.sort(intCodes);
			if (intCodes[intCodes.length - 1] < 9) {
				code = parent.getCode() + "_0" + (intCodes[intCodes.length - 1] + 1);
			} else {
				code = parent.getCode() + "_" + (intCodes[intCodes.length - 1] + 1);
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return code;
	}

	/**
	 * 根据编码查询主键值
	 * @param code 编码
	 * @return
	 */
	public int findIdByCode(String code) {
		int id = 0;
		try {
			id = dataDictDao.findIdByColumnNameAndValue("code", code);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return id;
	}

}
