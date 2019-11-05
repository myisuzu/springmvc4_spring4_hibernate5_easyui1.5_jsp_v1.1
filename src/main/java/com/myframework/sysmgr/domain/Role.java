package com.myframework.sysmgr.domain;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import org.apache.commons.lang3.StringUtils;
import com.myframework.common.domain.Entity;
import com.myframework.common.util.CollectionUtil;

/**
 * 角色
 * @author 马元
 * @date 2019年7月8日
 * @version 1.0
 */
public class Role extends Entity {

	/**
	 * 名称
	 */
	private String name;
	
	/**
	 * 权限集合
	 */
	private Set<Purview> purviewSet;
	
	/**
	 * 获取用户的角色集合的字符串表示形式
	 * @return
	 */
	public String getPurviews() {
		List<String> purviewList = new ArrayList<>();
		for (Purview purview : purviewSet) {
			purviewList.add(purview.getName());
		}
		return StringUtils.join(CollectionUtil.stringList2Array(purviewList), ",");
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<Purview> getPurviewSet() {
		return purviewSet;
	}

	public void setPurviewSet(Set<Purview> purviewSet) {
		this.purviewSet = purviewSet;
	}
	
}
