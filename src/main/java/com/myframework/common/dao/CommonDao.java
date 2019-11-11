package com.myframework.common.dao;

import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import com.myframework.common.pojo.HqlHelper;
import com.myframework.common.util.ArrayUtil;
import com.myframework.common.util.Constant;
import com.myframework.common.util.DateUtil;
import com.myframework.common.util.HibernateUtil;

/**
 * 公共持久层
 * @author 马元
 * @date 2018年8月25日
 * @version 1.0
 */
@SuppressWarnings("unchecked")
public class CommonDao<T> {

	private Class<T> clazz;
	@Autowired
	private SessionFactory sessionFactory;
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	protected CommonDao() {
		ParameterizedType pt = (ParameterizedType)this.getClass().getGenericSuperclass();
		clazz = (Class<T>)pt.getActualTypeArguments()[0];
	}
	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	protected JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	
	//-----------------------------------------------------------------------------
	
	/**
	 * 添加实体,返回主键值（设置sort、enable、add_date、update_data字段值）
	 * @param entry
	 * @return
	 */
	public int add(T entry) {
		int id = 0;
		try {
			//通过反射获取对象的公共方法
			Method setSort = entry.getClass().getMethod("setSort", int.class);
			Method setEnable = entry.getClass().getMethod("setEnable", int.class);
			Method setAddDate = entry.getClass().getMethod("setAddDate", String.class);
			Method setUpdateDate = entry.getClass().getMethod("setUpdateDate", String.class);
			
			//调用方法设置对象属性值
			setSort.invoke(entry, findNewRecordSort());
			setEnable.invoke(entry, Constant.ENABLE_0);
			setAddDate.invoke(entry, DateUtil.getFormatDate());
			setUpdateDate.invoke(entry, DateUtil.getFormatDate());
			
			id = (Integer)getSession().save(entry);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return id;
	}
	
	/**
	 * 修改实体（更新update_data字段值）
	 * @param entry
	 */
	public void update(T entry) {
		try {
			//通过反射获取对象的公共方法
			Method setUpdateDate = entry.getClass().getMethod("setUpdateDate", String.class);
			//调用方法设置对象属性值
			setUpdateDate.invoke(entry, DateUtil.getFormatDate());
			
			getSession().update(entry);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 根据id修改某字段值
	 * @param id 主键
	 * @param updateColumnName 要修改列名
	 * @param updateColumnValue 要修改列值
	 */
	public void updateColumnById(int id, String updateColumnName, Object updateColumnValue) {
		try {
			String sql = "update " + HibernateUtil.getTableNameByClass(sessionFactory, clazz)
						+ " set " + updateColumnName + " = " + updateColumnValue 
						+ " where id = " + id;
			getJdbcTemplate().update(sql);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 删除实体（物理删除）
	 * @param entry
	 */
	public void delete(T entry) {
		try {
			getSession().delete(entry);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 批量删除实体（物理删除）
	 * @param ids id集合
	 */
	public void delete(Integer... ids) {
		try {
			String hql = "delete from " + clazz.getSimpleName() + " o where o.id in (:ids)";
			getSession()
				.createQuery(hql)
				.setParameterList("ids", ids).executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 批量删除实体（逻辑删除）
	 * @param ids id集合
	 */
	public void disable(Integer... ids) {
		try {
			String hql = "update " + clazz.getSimpleName() + " o set o.enable = 1 where o.id in (:ids)";
			getSession()
				.createQuery(hql)
				.setParameterList("ids", ids).executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 执行SQL
	 * @param sql
	 */
	public void executeSQL(String sql) {
		try {
			jdbcTemplate.update(sql);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 上移或下移（交换两条记录排序值）
	 * @param id1
	 * @param id2
	 * @param sort1
	 * @param sort2
	 */
	public void move(int id1, int id2, int sort1, int sort2) {
		try {
			String hql1 = "update " + clazz.getSimpleName() + " o set o.sort = " + sort2 + " where o.id = '" + id1 + "'";
			String hql2 = "update " + clazz.getSimpleName() + " o set o.sort = " + sort1 + " where o.id = '" + id2 + "'";
			getSession().createQuery(hql1).executeUpdate();
			getSession().createQuery(hql2).executeUpdate();
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
	public void moveUp(int id, int pid) {
		try {
			
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
	public void moveDown(int id, int pid) {
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}	
	
	/**
	 * 根据id查询pid
	 * @param id
	 * @return
	 */
	public int findPidById(int id) {
		try {
			String sql = "select pid from " + HibernateUtil.getTableNameByClass(sessionFactory, clazz) + " where id = ?";
			return getJdbcTemplate().queryForObject(sql, int.class, id);
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
		try {
			String sql = "select id from " + HibernateUtil.getTableNameByClass(sessionFactory, clazz) + " where " + columnName + " = ?";
			return getJdbcTemplate().queryForObject(sql, int.class, columnValue);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 查询表新记录的sort字段值
	 * @return
	 */
	public int findNewRecordSort() {
		int sort = 0;
		try {
			Query query = getSession().createQuery("select max(sort) from " + clazz.getSimpleName());
			if (query.uniqueResult() == null) {
				return 1;
			}
			sort = (Integer)query.uniqueResult() + 1;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return sort;
	}	
	
	/**
	 * 查询总记录数
	 * @return
	 */
	public int findTotal() {
		int total = 0;
		try {
			Query query = getSession()
					.createQuery("select count(*) from " + clazz.getSimpleName() + " o where o.enable = ? order by sort asc")
					.setInteger(0, Constant.ENABLE_0);
			total = ((Long)query.uniqueResult()).intValue();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return total;
	}
	
	/**
	 * 根据数据字典表主键id值查询总记录数
	 * @param dataDictId 数据字典表主键id值
	 * @return
	 */
	public int findTotalByDataDictId(int dataDictId) {
		int total = 0;
		try {
			Query query = getSession()
					.createQuery("select count(*) from " + clazz.getSimpleName() + " o where o.type.id = ? and o.enable = ? order by sort asc")
					.setInteger(0, dataDictId)
					.setInteger(1, Constant.ENABLE_0);
			total = ((Long)query.uniqueResult()).intValue();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return total;
	}
	
	/**
	 * 根据指定列名和值查询总记录数
	 * @param columnName 列名
	 * @param columnValue 列值
	 * @return
	 */
	public int findTotalByColumnNameAndValue(String columnName, Object columnValue) {
		try {
			String sql = "select count(*) from " + HibernateUtil.getTableNameByClass(sessionFactory, clazz) + " where " + columnName + " = ? and enable = ?";
			return getJdbcTemplate().queryForObject(sql, int.class, columnValue, Constant.ENABLE_0);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 根据HqlHelper查询总记录数
	 * @param hq 查询条件
	 * @return
	 */
	public int findTotalByHqlHelper(HqlHelper hq) {
		int total = 0;
		try {
			Query query = getSession().createQuery(hq.getQueryCountHql());
			for (int i=0; i<hq.getParamList().size(); i++) {
				query.setParameter(i, hq.getParamList().get(i));
			}
			total = ((Long)query.uniqueResult()).intValue();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return total;
	}
	
	/**
	 * 根据pid查询总记录数
	 * @param pid
	 * @return
	 */
	public int findTotalByPid(int pid) {
		int total = 0;
		try {
			String hql = "select count(*) from " + clazz.getSimpleName() + " o where";
			if (pid == 0) {
				hql += " o.parent.id is null";
			} else {
				hql += " o.parent.id = " + pid;
			}
			hql += " and o.enable = ?";
			Query query = getSession().createQuery(hql).setInteger(0, Constant.ENABLE_0);
			total = ((Long)query.uniqueResult()).intValue();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return total;
	}
	
	/**
	 * 根据开始、结束日期查询总记录数（日期字段为date）
	 * @param beginDate
	 * @param endDate
	 * @return
	 */
	public int findTotalByDate(String beginDate, String endDate) {
		int total = 0;
		try {
			String hql = "";
			if ("".equals(endDate) || beginDate.equals(endDate)) {
				hql = "select count(*) from " + clazz.getSimpleName() + " where date >= '" + beginDate + " 00:00:00' and date <= '" + beginDate + " 23:59:59'";
			} else {
				beginDate = beginDate + " 00:00:00";
				endDate = endDate + " 23:59:59";
				hql = "select count(*) from " + clazz.getSimpleName() + " where date between '" + beginDate + "' and '" + endDate + "'";
			}
			Query query = getSession().createQuery(hql);
			total = ((Long)query.uniqueResult()).intValue();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return total;
	}
	
	/**
	 * 根据id查询指定列的值
	 * @param id 主键值
	 * @param columnName 列名
	 * @return
	 */
	public Object findColumnValueByIdAndColumnName(int id, String columnName) {
		try {
			String sql = "select " + columnName + " from " + HibernateUtil.getTableNameByClass(sessionFactory, clazz) + " where id = ?";
			return getJdbcTemplate().queryForObject(sql, Object.class, id);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	/**
	 * 根据id查询实体
	 * @param id
	 * @return
	 */
	public T findById(int id) {
		try {
			return (T)getSession().get(clazz, id);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 根据HqlHelper查询实体
	 * @param hq 查询条件
	 * @return
	 */
	public T findByHqlhelper(HqlHelper hq) {
		try {
			Query query = getSession().createQuery(hq.getQueryListHql());
			for (int i=0; i<hq.getParamList().size(); i++) {
				query.setParameter(i, hq.getParamList().get(i));
			}
			List<T> list = query.list();
			if (list != null && list.size() > 0) {
				return list.get(0);
			}
			return null;
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
		List<T> list = null;
		try {
			//list = getSession().createCriteria(clazz).list();
			Query query = getSession()
					.createQuery("from " + clazz.getSimpleName() + " o where o.enable = ? order by sort asc")
					.setInteger(0, Constant.ENABLE_0);
			list = query.list();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}
	
	/**
	 * 查询顶级实体集合
	 * @return
	 */
	public List<T> findTopList() {
		List<T> topList = null;
		try {
			topList = getSession().createQuery("from " + clazz.getSimpleName() + " o where o.parent.id is null and o.enable = 0 order by o.sort asc").list();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return topList;
	}	
	
	/**
	 * 根据id集合查询实体集合
	 * @param ids id集合
	 * @return
	 */
	public List<T> findListByIds(Integer... ids) {
		List<T> list = null;
		try {
			String hql = "from " + clazz.getSimpleName() + " o where o.id in (:ids)";
			list = getSession().createQuery(hql).setParameterList("ids", ids).list();
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
			Integer[] ids = ArrayUtil.stringArray2IntegerArray(idStr.split(","));
			String hql = "from " + clazz.getSimpleName() + " o where o.id in (:ids)";
			list = getSession().createQuery(hql).setParameterList("ids", ids).list();
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
			String[] fieldValueArray = fieldValueStr.split(",");
			String hql = "from " + clazz.getSimpleName() + " o where o." + fieldName + " in (:ids)";
			list = getSession().createQuery(hql).setParameterList("ids", fieldValueArray).list();
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
			String hql = "";
			if (pid == 0) {
				hql = "from " + clazz.getSimpleName() + " o where o.enable = 0 and o.parent.id is null order by o.sort asc";
			} else {
				hql = "from " + clazz.getSimpleName() + " o where o.enable = 0 and o.parent.id = '" + pid + "' order by o.sort asc";
			}
			list = getSession().createQuery(hql).list();
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
			Query query = getSession().createQuery(hq.getQueryListHql());
			for (int i=0; i<hq.getParamList().size(); i++) {
				query.setParameter(i, hq.getParamList().get(i));
			}
			list = query.list();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}
	
	/**
	 * 根据HqlHelper查询指定数量的实体集合
	 * @param number 查询记录数
	 * @param hq 查询条件 
	 * @return
	 */
	public List<T> findListByHqlHelperAndNumber(HqlHelper hq, int number) {
		List<T> list = null;
		try {
			Query query = getSession().createQuery(hq.getQueryListHql())
					.setMaxResults(number);					// 设置查询记录数
			for (int i=0; i<hq.getParamList().size(); i++) {
				query.setParameter(i, hq.getParamList().get(i));
			}
			list = query.list();
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
	 * @return
	 */
	public List<T> findListByPageNoAndPageSize(int pageNo, int pageSize) {
		List<T> list = null;
		try {
			Query query = getSession()
					.createQuery("from " + clazz.getSimpleName() + " o where o.enable = ? order by sort asc")
					.setInteger(0, Constant.ENABLE_0)
					.setFirstResult((pageNo - 1) * pageSize)	// 设置从第几条记录开始查询
					.setMaxResults(pageSize);					// 设置每页几条记录
			list = query.list();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}
	
	/**
	 * 根据类别id分页查询实体集合
	 * @param pageNo 当前页
	 * @param pageSize 每页记录数
	 * @param typeId 数据字典表主键id值
	 * @return 
	 */
	public List<T> findListByPageNo5PageSize5TypeId(int pageNo, int pageSize, int typeId) {
		List<T> list = null;
		try {
			Query query = getSession()
					.createQuery("from " + clazz.getSimpleName() + " o where o.type.id = ? and o.enable = ? order by sort asc")
					.setInteger(0, typeId)
					.setInteger(1, Constant.ENABLE_0)
					.setFirstResult((pageNo - 1) * pageSize)	// 设置从第几条记录开始查询
					.setMaxResults(pageSize);					// 设置每页几条记录
			list = query.list();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}
	
	/**
	 * 根据pid分页查询实体集合
	 * @param pageNo 当前页
	 * @param pageSize 每页记录数
	 * @param pid 父记录id
	 * @return 
	 */
	public List<T> findListByPageNo5PageSize5Pid(int pageNo, int pageSize, int pid) {
		List<T> list = null;
		try {
			String hql = "from " + clazz.getSimpleName() + " o where";
			if (pid == 0) {
				hql += " o.parent.id is null";
			} else {
				hql += " o.parent.id = " + pid;
			}
			hql += " and o.enable = ? order by sort asc";
			Query query = getSession()
					.createQuery(hql)
					.setInteger(0, Constant.ENABLE_0)
					.setFirstResult((pageNo - 1) * pageSize)	// 设置从第几条记录开始查询
					.setMaxResults(pageSize);					// 设置每页几条记录
			list = query.list();
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
	public List<T> findListByPageNo5PageSize5HqlHelper(int pageNo, int pageSize, HqlHelper hq) {
		List<T> list = null;
		try {
			Query query = getSession().createQuery(hq.getQueryListHql())
					.setFirstResult((pageNo - 1) * pageSize)	// 设置从第几条记录开始查询
					.setMaxResults(pageSize);					// 设置每页几条记录
			for (int i=0; i<hq.getParamList().size(); i++) {
				query.setParameter(i, hq.getParamList().get(i));
			}
			list = query.list();
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
			list = getSession()
					.createQuery("from " + clazz.getSimpleName() + " o where o.type.id = ? and o.enable = ? order by o.sort asc")
					.setInteger(0, dataDictId)
					.setInteger(1, Constant.ENABLE_0)
					.list();
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
			list = getSession()
					.createQuery("from " + clazz.getSimpleName() + " o where o.type.id = ? and o.enable = ? order by o.sort asc")
					.setInteger(0, dataDictId)
					.setInteger(1, Constant.ENABLE_0)
					.setMaxResults(number)
					.list();
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
			list = jdbcTemplate.queryForList(sql, String.class);
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
			list = jdbcTemplate.queryForList(sql);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}
	
	/**
	 * 获取指定列的List<Map<String, Object>>集合（一个Map对象代表一条记录）
	 * @param columnMap 查询列及列别名集合,不指定别名则别名为null或空字符串（Map(<id,"">,<name,text>...)）
	 * @return
	 */
	public List<Map<String, Object>> findMapListByMap(Map<String, Object> columnMap) {
		List<Map<String, Object>> list = null;
		try {
			StringBuffer sb = new StringBuffer("select ");
			Set<String> keySet = columnMap.keySet();
			int len = 0;
			for (String oldColumn : keySet) {
				Object newsColumn = columnMap.get(oldColumn);
				if (newsColumn != null && !"".equals(newsColumn.toString())) {
					sb.append(oldColumn + " " + newsColumn);
				} else {
					sb.append(oldColumn);
				}
				if (len != (keySet.size()-1)) {
					sb.append(", ");
				}
				len++;
			}
			sb.append(" from " + HibernateUtil.getTableNameByClass(sessionFactory, clazz))
			  .append(" where enable = ? order by sort asc");
			list = jdbcTemplate.queryForList(sb.toString(), Constant.ENABLE_0);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}
	
	/**
	 * 获取指定列的List<Map<String, Object>>集合（一个Map对象代表一条记录）
	 * @param pid 父记录主键值
	 * @param columnMap 查询列及列别名集合,不指定别名则别名为null或空字符串（Map(<id,"">,<name,text>...)）
	 * @return
	 */
	public List<Map<String, Object>> findMapListByPidAndMap(int pid, Map<String, Object> columnMap) {
		List<Map<String, Object>> list = null;
		try {
			StringBuffer sb = new StringBuffer("select ");
			Set<String> keySet = columnMap.keySet();
			int len = 0;
			for (String oldColumn : keySet) {
				Object newsColumn = columnMap.get(oldColumn);
				if (newsColumn != null && !"".equals(newsColumn.toString())) {
					sb.append(oldColumn + " " + newsColumn);
				} else {
					sb.append(oldColumn);
				}
				if (len != (keySet.size()-1)) {
					sb.append(", ");
				}
				len++;
			}
			sb.append(" from " + HibernateUtil.getTableNameByClass(sessionFactory, clazz))
			  .append(" where enable = ?");
			if (pid == 0) {
				sb.append(" and pid is null");
			} else {
				sb.append(" and pid = " + pid);
			}
			sb.append(" order by sort asc");
			list = jdbcTemplate.queryForList(sb.toString(), Constant.ENABLE_0);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}
	
	/**
	 * 获取指定列的List<Map<String, Object>>集合（一个Map对象代表一条记录）
	 * @param pid 父记录主键值
	 * @param userId 当前登录用户id
	 * @param columnMap 查询列及列别名集合,不指定别名则别名为null或空字符串（Map(<id,"">,<name,text>...)）
	 * @return
	 */
	public List<Map<String, Object>> findMapListByPidAndMap(int pid, int userId, Map<String, Object> columnMap) {
		List<Map<String, Object>> list = null;
		try {
			StringBuffer sb = new StringBuffer("select ");
			Set<String> keySet = columnMap.keySet();
			int len = 0;
			for (String oldColumn : keySet) {
				Object newsColumn = columnMap.get(oldColumn);
				if (newsColumn != null && !"".equals(newsColumn.toString())) {
					sb.append(oldColumn + " " + newsColumn);
				} else {
					sb.append(oldColumn);
				}
				if (len != (keySet.size()-1)) {
					sb.append(", ");
				}
				len++;
			}
			sb.append(" from " + HibernateUtil.getTableNameByClass(sessionFactory, clazz))
			  .append(" where enable = ?")
			  .append(" and id in (select purview_id from t_system_role_purview where role_id in (select role_id from t_system_user_role where user_id = "+ userId +"))");
			if (pid == 0) {
				sb.append(" and pid is null");
			} else {
				sb.append(" and pid = " + pid);
			}
			sb.append(" order by sort asc");
			list = jdbcTemplate.queryForList(sb.toString(), Constant.ENABLE_0);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}
	
	/**
	 * 查询表id、指定某列的值对象数组
	 * @param columnName 指定列名
	 * @return List<[1, 'a'], [2, 'b'] ...>
	 */
	public List<Object[]> findIdAndColumnArrayList(String columnName) {
		List<Object[]> list = null;
		try {
			list = getSession()
					.createQuery("select id, " + columnName + " from " + clazz.getSimpleName() + " o where o.enable = ? order by o.sort asc")
					.setInteger(0, Constant.ENABLE_0)
					.list();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}
	
}
