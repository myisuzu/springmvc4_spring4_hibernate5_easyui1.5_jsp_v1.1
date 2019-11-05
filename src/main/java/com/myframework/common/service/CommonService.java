package com.myframework.common.service;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import com.myframework.common.dao.CommonDao;
import com.myframework.common.pojo.EasyUIDataGrid;
import com.myframework.common.pojo.HqlHelper;
import com.myframework.common.pojo.Msg;
import com.myframework.common.pojo.PageBean;
import com.myframework.common.util.Constant;

/**
 * 公共业务层
 * @author 马元
 * @date 2018年8月25日
 * @version 1.0
 */
@SuppressWarnings("all")
public class CommonService<T> {

	@Autowired
	private CommonDao<T> commonDao;
	
	/**
	 * 添加实体
	 * @param entry
	 */
	public Msg add(T entry) {
		try {
			commonDao.add(entry);
			return Msg.success();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 添加实体,返回主键值
	 * @param entry
	 */
	public int addReturnId(T entry) {
		try {
			return commonDao.add(entry);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 添加实体
	 * @param entry
	 */
	/*
	public T addZtreeEntity(T entry, int pid) {
		try {
			commonDao.add(entry);
			if (pid != 0) {
				commonDao.updateColumnById(pid, "is_leaf", Constant.ENABLE_1);
				
				Method getId = entry.getClass().getMethod("getId");
				int id = (Integer)getId.invoke(entry);
				commonDao.updateColumnById(id, "pid", pid);
			}
			return entry;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	*/
	
	/**
	 * 修改实体
	 * @param entry
	 */
	public Msg update(T entry) {
		try {
			commonDao.update(entry);
			return Msg.success();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 删除实体
	 * @param entry
	 */
	public Msg delete(T entry) {
		try {
			commonDao.delete(entry);
			return Msg.success();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}	
	
	/**
	 * 批量删除实体（物理删除）
	 * @param ids id集合
	 */
	public Msg delete(Integer... ids) {
		try {
			commonDao.delete(ids);
			return Msg.success();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 批量删除实体（物理删除）
	 * @param ids id集合
	 */
	public Msg deleteZtreeEntity(Integer... ids) {
		try {
			/*针对自关联实体类：如果所有子对象被删除，那么需要更新父对象的isParent属性为false*/
			//获取子对象
			T child = commonDao.findById(ids[0]);
			Method getParent = child.getClass().getMethod("getParent");
			//获取父对象
			T parent = (T)getParent.invoke(child);
			if (parent != null) {
				Method getId = parent.getClass().getMethod("getId");
				Method setIsParent = parent.getClass().getMethod("setIsParent", boolean.class);
				int pid = (Integer)getId.invoke(parent);
				//判断父对象下是否还有子
				int total = commonDao.findTotalByPid(pid);
				if (total == 1) {
					setIsParent.invoke(parent, Constant.FALSE);
				}
			}
			commonDao.delete(ids);
			return Msg.success();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 批量删除实体（逻辑删除）
	 * @param ids id集合
	 */
	public Msg disable(Integer... ids) {
		try {
			commonDao.disable(ids);
			return Msg.success();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 批量删除实体（逻辑删除）
	 * @param ids id集合
	 */
	public Msg disableZtreeEntity(Integer... ids) {
		try {
			commonDao.disable(ids);
			
			/*针对自关联实体类：如果所有子对象被删除，那么需要更新父对象的isParent属性为false*/
			//获取子对象
			T child = commonDao.findById(ids[0]);
			Method getParent = child.getClass().getMethod("getParent");
			//获取父对象
			T parent = (T)getParent.invoke(child);
			if (parent != null) {
				Method getId = parent.getClass().getMethod("getId");
				Method setIsParent = parent.getClass().getMethod("setIsParent", boolean.class);
				int pid = (Integer)getId.invoke(parent);
				//判断父对象下是否还有子
				int total = commonDao.findTotalByPid(pid);
				if (total == 0) {
					setIsParent.invoke(parent, Constant.TRUE);
				}
			}
			
			return Msg.success();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 根据表字段及值验证数据存在性
	 * @param code
	 * @return true:验证通过, false:验证不通过
	 */
	public boolean verifyExistsByColumnNameAndValue(String columnName, Object columnValue) {
		try {
			int count = commonDao.findTotalByColumnNameAndValue(columnName, columnValue);
			if (count == 0) return true;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return false;
	}	
	
	/**
	 * 执行SQL
	 * @param sql
	 */
	public void executeSQL(String sql) {
		try {
			commonDao.executeSQL(sql);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}	
	
	/**
	 * 上移、下移
	 * @param id1
	 * @param id2
	 * @param sort1
	 * @param sort2
	 */
	public Msg move(int id1, int id2, int sort1, int sort2) {
		try {
			commonDao.move(id1, id2, sort1, sort2);
			return Msg.success();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 上移
	 * @param id
	 * @param pid
	 * @return
	 */
	public Msg moveUp(int id, int pid) {
		try {
			commonDao.moveUp(id, pid);
			return Msg.success();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}	
	
	/**
	 * 下移
	 * @param id
	 * @param pid
	 * @return
	 */
	public Msg moveDown(int id, int pid) {
		try {
			commonDao.moveDown(id, pid);
			return Msg.success();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}	
	
	/**
	 * 根据某列值查询id值
	 * @param columnName 列名
	 * @param columnValue 列值
	 * @return
	 */
	public int findIdByColumnNameAndValue(String columnName, Object columnValue) {
		int id = 0;
		try {
			id = commonDao.findIdByColumnNameAndValue(columnName, columnValue);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return id;
	}	
	
	/**
	 * 根据id查询pid
	 * @param id
	 * @return
	 */
	public int findPidById(int id) {
		try {
			return commonDao.findPidById(id);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 根据pid查询总记录数
	 * @param pid
	 * @return
	 */
	public int findTotalByPid(int pid) {
		int total = 0;
		try {
			total = commonDao.findTotalByPid(pid);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return total;
	}	
	
	/**
	 * 根据id查询实体
	 * @param id
	 * @return
	 */
	public T findById(int id) {
		return commonDao.findById(id);
	}
	
	/**
	 * 根据HqlHelper查询实体
	 * @param hq 查询条件
	 * @return
	 */
	public T findByHqlhelper(HqlHelper hq) {
		try {
			return commonDao.findByHqlhelper(hq);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 查询所有实体集合
	 * @return
	 */
	public List<T> findAll() {
		try {
			return commonDao.findAll();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 查询所有的顶级实体集合
	 * @return
	 */
	public List<T> findTopList() {
		List<T> list = null;
		try {
			list = commonDao.findTopList();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}	
	
	/**
	 * 根据id集合查询实体集合
	 * @param ids id集合
	 * @return
	 */
	public List<T> findListByIds(Integer... ids) {
		List<T> list = null;
		try {
			list = commonDao.findListByIds(ids);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}
	
	/**
	 * 根据id字符串查询实体集合
	 * @param idStr id字符串(1,2,3)
	 * @return
	 */
	public List<T> findListByIdStr(String idStr) {
		List<T> list = null;
		try {
			list = commonDao.findListByIdStr(idStr);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}	
	
	/**
	 * 根据某个字段值字符串查询实体集合
	 * @param fieldName 字段名称（表的列名） 
	 * @param fieldValueStr 字段值字符串，多个值之间以逗号间隔
	 * @return
	 */
	public List<T> findListByFieldValueStr(String fieldName, String fieldValueStr) {
		List<T> list = null;
		try {
			list = commonDao.findListByFieldValueStr(fieldName, fieldValueStr);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}	
	
	/**
	 * 根据pid查询实体集合
	 * @param pid
	 * @return
	 */
	public List<T> findListByPid(int pid) {
		List<T> list = null;
		try {
			list = commonDao.findListByPid(pid);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}
	
	/**
	 * 根据数据字典表主键id值查询实体集合
	 * @param dataDictId 数据字典表主键id值
	 * @return
	 */
	public List<T> findListByDataDictId(int dataDictId) {
		List<T> list = null;
		try {
			list = commonDao.findListByDataDictId(dataDictId);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}
	
	/**
	 * 根据数据字典表主键id值查询指定数量的实体集合
	 * @param dataDictId 数据字典表主键id值
	 * @param number 记录数
	 * @return
	 */
	public List<T> findListByDataDictIdAndNumber(int dataDictId, int number) {
		List<T> list = null;
		try {
			list = commonDao.findListByDataDictIdAndNumber(dataDictId, number);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}
	
	/**
	 * 根据HqlHelper查询实体集合
	 * @param hq 查询条件
	 * @return
	 */
	public List<T> findListByHqlHelper(HqlHelper hq) {
		List<T> list = null;
		try {
			list = commonDao.findListByHqlHelper(hq);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}
	
	/**
	 * 根据HqlHelper查询指定数量的实体集合
	 * @param number 记录数
	 * @param hq 查询条件
	 * @return
	 */
	public List<T> findListByHqlHelperAndNumber(HqlHelper hq, int number) {
		List<T> list = null;
		try {
			list = commonDao.findListByHqlHelperAndNumber(hq, number);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}
	
	/**
	 * 分页查询实体集合
	 * @param pageNo 当前页
	 * @param pageSize 每页记录数
	 * @param hq 查询条件
	 * @return
	 */
	public List<T> findListByHqlHelper(int pageNo, int pageSize, HqlHelper hq) {
		List<T> list = null;
		try {
			list =  commonDao.findListByPageNo5PageSize5HqlHelper(pageNo, pageSize, hq);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}	
	
	/**
	 * 根据SQL查询表某一列的值集合
	 * @param sql
	 * @return
	 */
	public List<String> findListBySql(String sql) {
		List<String> list = null;
		try {
			list = commonDao.findListBySql(sql);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}

	/**
	 * 根据SQL查询表Map结构List集合
	 * @param sql
	 * @return
	 */
	public List<Map<String, Object>> findMapListBySql(String sql) {
		List<Map<String, Object>> list = null;
		try {
			list = commonDao.findMapListBySql(sql);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}	
	
	/**
	 * 查询EasyUICombo组件的数据集合（id、text键值对Map结构的List集合）
	 * 适用于一级列表
	 * @return
	 */
	public List<Map<String, Object>> findEasyUIComboMapList() {
		List<Map<String, Object>> list = null;
		try {
			Map<String, Object> columnMap = new HashMap<>();
			columnMap.put("id", "");
			columnMap.put("name", "text");
			//加上iconCls这个属性可以让Combo有样式
			//columnMap.put("iconcls", "iconCls");
			list = commonDao.findMapListByMap(columnMap);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}
	
	/**
	 * 查询EasyUICombo组件的数据集合（id、text键值对Map结构的List集合）
	 * 适用于一级列表
	 * @param replaceColumn 作为text键的表字段
	 * @return
	 */
	public List<Map<String, Object>> findEasyUIComboMapList(String replaceColumn) {
		List<Map<String, Object>> list = null;
		try {
			Map<String, Object> columnMap = new HashMap<>();
			columnMap.put("id", "");
			columnMap.put(replaceColumn, "text");
			list = commonDao.findMapListByMap(columnMap);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}
	
	/**
	 * 根据pid查询EasyUI-Combo的数据集合（id、text键值对Map结构的List集合）
	 * 适用于一级列表
	 * @param pid 父id
	 * @return
	 */
	public List<Map<String, Object>> findEasyUIComboMapListByPid(int pid) {
		List<Map<String, Object>> list = null;
		try {
			Map<String, Object> columnMap = new HashMap<>();
			columnMap.put("id", "");
			columnMap.put("name", "text");
			list = commonDao.findMapListByPidAndMap(pid, columnMap);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}
	
	/**
	 * 根据pid查询EasyUI-Combo的数据集合（id、text键值对Map结构的List集合）
	 * 适用于一级列表
	 * @param pid 父id
	 * @param replaceColumn 别名为text的表字段
	 * @return
	 */
	public List<Map<String, Object>> findEasyUIComboMapListByPid(int pid, String replaceColumn) {
		List<Map<String, Object>> list = null;
		try {
			Map<String, Object> columnMap = new HashMap<>();
			columnMap.put("id", "");
			columnMap.put(replaceColumn, "text");
			list = commonDao.findMapListByPidAndMap(pid, columnMap);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}
	
	/**
	 * 查询EasyUITree组件的数据集合
	 * 适用于多级列表,即表记录自关联
	 * @param pid 父记录id值
	 * @return
	 */
	public List<Map<String, Object>> findEasyUITreeMapList(int pid) {
		List<Map<String, Object>> list = null;
		try {
			Map<String, Object> columnMap = new HashMap<>();
			//ztree基本属性
			columnMap.put("id", null);
			columnMap.put("name", "text");
			columnMap.put("case is_parent when 0 then 'open' else 'closed' end state", null);
			list = commonDao.findMapListByPidAndMap(pid, columnMap);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}
	
	/**
	 * 查询EasyUITree组件的数据集合
	 * 适用于多级列表,即表记录自关联
	 * @param pid 父记录id值
	 * @param otherColumnMap 其他要查询的列及列别名集合
	 * @return
	 */
	public List<Map<String, Object>> findEasyUITreeMapList(int pid, Map<String, Object> otherColumnMap) {
		List<Map<String, Object>> list = null;
		try {
			Map<String, Object> columnMap = new HashMap<>();
			//ztree基本属性
			columnMap.put("id", null);
			columnMap.put("name", null);
			columnMap.put("case is_parent when 0 then 'open' else 'closed' end state", null);
			//其他附加属性
			if (otherColumnMap != null && otherColumnMap.size() > 0) {
				columnMap.putAll(otherColumnMap);
			}
			list = commonDao.findMapListByPidAndMap(pid, columnMap);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}
	
	/**
	 * 查询zTree组件的数据集合
	 * @param pid 父记录id值
	 * @return
	 */
	public List<Map<String, Object>> findZTreeMapList(int pid) {
		List<Map<String, Object>> list = null;
		try {
			Map<String, Object> columnMap = new HashMap<>();
			//ztree基本属性
			columnMap.put("id", null);
			columnMap.put("pid", null);
			columnMap.put("name", null);
			columnMap.put("url", "path");
			columnMap.put("is_parent", "isParent");
			
			list = commonDao.findMapListByPidAndMap(pid, columnMap);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}
	
	/**
	 * 查询zTree组件的数据集合
	 * @param pid 父记录id值
	 * @param otherColumnMap 其他要查询的列及列别名集合
	 * @return
	 */
	public List<Map<String, Object>> findZTreeMapList(int pid, Map<String, Object> otherColumnMap) {
		List<Map<String, Object>> list = null;
		try {
			Map<String, Object> columnMap = new HashMap<>();
			//ztree基本属性
			columnMap.put("id", null);
			columnMap.put("pid", null);
			columnMap.put("name", null);
			columnMap.put("url", "path");
			columnMap.put("is_parent", "isParent");
			//其他附加属性
			if (otherColumnMap != null && otherColumnMap.size() > 0) {
				columnMap.putAll(otherColumnMap);
			}
			
			list = commonDao.findMapListByPidAndMap(pid, columnMap);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}
	
	/**
	 * 根据列名及pid查询数据集合
	 * @param columnMap 查询列及列别名集合, Map的key为列名，value列别名
	 * 	不指定别名则别名为null或空字符串（Map(<id,"">,<name,text>...)）
	 * @return
	 */
	public List<Map<String, Object>> findMapListByMap(Map<String, Object> columnMap) {
		List<Map<String, Object>> list = null;
		try {
			list = commonDao.findMapListByMap(columnMap);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}
	
	/**
	 * 根据列名及pid查询数据集合
	 * @param columnMap 查询列及列别名集合,不指定别名则别名为null或空字符串（Map(<id,"">,<name,text>...)）
	 * @param pid 父记录主键值
	 * @return
	 */
	public List<Map<String, Object>> findMapListByPidAndMap(int pid, Map<String, Object> columnMap) {
		List<Map<String, Object>> list = null;
		try {
			list = commonDao.findMapListByPidAndMap(pid, columnMap);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}
	
	/**
	 * 获取EasyUIDataGrid对象
	 * @param pageNo 当前页
	 * @param pageSize 每页记录数
	 * @return
	 */
	public EasyUIDataGrid<T> getEasyUIDataGrid(int pageNo, int pageSize) {
		EasyUIDataGrid<T> pb = null;
		try {
			int total = commonDao.findTotal();
			List<T> list = commonDao.findListByPageNoAndPageSize(pageNo, pageSize);
			pb = new EasyUIDataGrid<T>(total, list);;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return pb;
	}
	
	/**
	 * 根据分类id获取EUDataGridBean对象
	 * @param pageNo 当前页
	 * @param pageSize 每页记录数
	 * @param dataDictId 数据字典表主键id值
	 * @return
	 */
	public EasyUIDataGrid<T> getEasyUIDataGridByDataDictId(int pageNo, int pageSize, int dataDictId) {
		EasyUIDataGrid<T> pb = null;
		try {
			int total = commonDao.findTotalByDataDictId(dataDictId);
			List<T> list = commonDao.findListByPageNo5PageSize5TypeId(pageNo, pageSize, dataDictId);
			pb = new EasyUIDataGrid<T>(total, list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return pb;
	}
	
	/**
	 * 根据pid获取EUDataGridBean对象
	 * @param pageNo 当前页
	 * @param pageSize 每页记录数
	 * @param pid 父记录id
	 * @return
	 */
	public EasyUIDataGrid<T> getEasyUIDataGridByPid(int pageNo, int pageSize, int pid) {
		EasyUIDataGrid<T> pb = null;
		try {
			int total = commonDao.findTotalByPid(pid);
			List<T> list = commonDao.findListByPageNo5PageSize5Pid(pageNo, pageSize, pid);
			pb = new EasyUIDataGrid<T>(total, list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return pb;
	}
	
	/**
	 * 获取EUDataGridBean对象
	 * @param pageNo 当前页
	 * @param pageSize 每页记录数
	 * @param hq 查询条件
	 * @return
	 */
	public EasyUIDataGrid<T> getEasyUIDataGridByHqlHelper(int pageNo, int pageSize, HqlHelper hq) {
		EasyUIDataGrid<T> pb = null;
		try {
			int total = commonDao.findTotalByHqlHelper(hq);
			List<T> list = commonDao.findListByPageNo5PageSize5HqlHelper(pageNo, pageSize, hq);
			pb = new EasyUIDataGrid<T>(total, list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return pb;
	}
	
	/**
	 * 获取PageBean对象
	 * @param pageNo 当前页
	 * @param pageSize 每页记录数
	 * @param hq 查询条件
	 * @return
	 */
	public PageBean<T> getPageBean(int pageNo, int pageSize, HqlHelper hq) {
		PageBean<T> pb = null;
		try {
			int total = commonDao.findTotalByHqlHelper(hq);
			List<T> list = commonDao.findListByPageNo5PageSize5HqlHelper(pageNo, pageSize, hq);
			pb = new PageBean<T>(pageNo, pageSize, total, list, 5);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return pb;
	}
	
}
