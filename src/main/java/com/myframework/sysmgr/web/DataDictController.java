package com.myframework.sysmgr.web;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.myframework.common.pojo.Msg;
import com.myframework.sysmgr.domain.DataDict;
import com.myframework.sysmgr.service.DataDictService;

/**
 * 数据字典管理
 * @author 马元
 * @date 2018年8月25日
 * @version 1.0
 */
@Controller
@RequestMapping("/system/datadict")
public class DataDictController {
	
	@Autowired
	private DataDictService dataDictService;
	
	/**
	 * 请求列表页面
	 * @return
	 */
	@RequestMapping("/listUI")
	public String listUI() {
		return "back/system/datadict/datadictList";
	}
	
	/**
	 * 请求列表json数据
	 * @param id
	 * @param pageNo 当前页
	 * @param pageSize 每页记录数
	 */
	@RequestMapping("/list")
	@ResponseBody
	public Object list(
			@RequestParam(defaultValue="0") int id,
			@RequestParam(name="page", defaultValue="1") int pageNo,
			@RequestParam(name="rows", defaultValue="10") int pageSize) 
			throws Exception {
		if (id == 0) {
			return dataDictService.getEasyUIDataGridByPid(pageNo, pageSize, id);
		}
		return dataDictService.findListByPid(id);
	}
	
	/**
	 * 请求添加或修改页面
	 * @return
	 */
	@RequestMapping("/saveUI")
	public String saveUI() {
		return "back/system/datadict/datadictForm";
	}
	
	/**
	 * 根据父id查询子记录数量
	 * @param pid 父id
	 * @return
	 */
	@RequestMapping("/childCountJson")
	@ResponseBody
	public Object getChildCountJsonByPid(@RequestParam(defaultValue="0") int pid) throws Exception {
		return dataDictService.findTotalByPid(pid);
	}
	
	/**
	 * 长编码重复性验证
	 * @param longCode 长编码
	 */
	@RequestMapping("/verify")
	@ResponseBody
	public Object verify(String longCode) throws Exception {
		return dataDictService.verifyExistsByColumnNameAndValue("code", longCode);
	}	
	
	/**
	 * 添加
	 * @param dataDict
	 * @param pid
	 */
	@RequestMapping("/add")
	@ResponseBody
	public Msg add(DataDict dataDict) throws Exception {
		return dataDictService.add(dataDict);
	}
	
	/**
	 * 修改
	 * @param dataDict
	 */
	@RequestMapping("/update")
	@ResponseBody
	public Msg update(DataDict dataDict) throws Exception {
		return dataDictService.update(dataDict);
	}
	
	/**
	 * 逻辑删除
	 * @param ids
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Msg delete(Integer[] id) throws Exception {
		return dataDictService.disable(id);
	}
	
	/**
	 * 上移
	 * @param id
	 */
	@RequestMapping("/moveUp")
	@ResponseBody
	public Msg moveUp(@RequestParam(defaultValue="0") int id) throws Exception {
		DataDict dataDict = dataDictService.findById(id);
		return dataDictService.moveUp(id, dataDict.getParent() == null ? 0 : dataDict.getParent().getId());
	}
	
	/**
	 * 下移
	 * @param id
	 */
	@RequestMapping("/moveDown")
	@ResponseBody
	public Msg moveDown(@RequestParam(defaultValue="0") int id) throws Exception {
		DataDict dataDict = dataDictService.findById(id);
		return dataDictService.moveDown(id, dataDict.getParent() == null ? 0 : dataDict.getParent().getId());
	}
	
	/**
	 * 根据父id获取子对象的easyui-combotree对象json数据
	 * @param pid 父id
	 */
	@RequestMapping("/combotreeJsonByPid")
	@ResponseBody
	public List<Map<String, Object>> combotreeJsonByPid(@RequestParam(defaultValue="0") int pid) 
			 throws Exception {
		return dataDictService.findEasyUIComboMapListByPid(pid);
	}
	
	/**
	 * 根据父编码获取子对象的easyui-combotree对象json数据
	 * @param code 父编码
	 */
	@RequestMapping("/combotreeJsonByPcode")
	@ResponseBody
	public List<Map<String, Object>> combotreeJsonByPcode(String code) 
			 throws Exception {
		return dataDictService.findEasyUIComboMapListByPid(
				dataDictService.findIdByColumnNameAndValue("code", code));
	}
	
}
