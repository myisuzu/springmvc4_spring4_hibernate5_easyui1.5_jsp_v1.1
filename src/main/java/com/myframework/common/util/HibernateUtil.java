package com.myframework.common.util;

import org.hibernate.SessionFactory;
import org.hibernate.persister.entity.AbstractEntityPersister;

/**
 * Hibernate工具类
 * @author 马元
 * @date 2019年6月30日
 * @version 1.0
 */
public class HibernateUtil {

	/**
	 * 根据实体类字节码对象获取对应数据库表名称
	 * @param sessionFactory
	 * @param clazz
	 * @return
	 */
	public static String getTableNameByClass(SessionFactory sessionFactory, Class<?> clazz) {
		String tableName = "";
		try {
			AbstractEntityPersister classMetadata = (AbstractEntityPersister)sessionFactory.getClassMetadata(clazz);
			tableName = classMetadata.getTableName();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return tableName;
	}
}
