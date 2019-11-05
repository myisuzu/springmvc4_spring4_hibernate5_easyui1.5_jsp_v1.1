package com.myframework.cms.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.myframework.cms.dao.CourseDao;
import com.myframework.cms.domain.Course;
import com.myframework.common.pojo.Msg;
import com.myframework.common.service.CommonService;
import com.myframework.common.util.Constant;

@Service
public class CourseService extends CommonService<Course> {
	
	@Autowired
	private CourseDao courseDao;

	public Msg add(Course course, int pid) {
		try {
			//更新父
			Course parent = courseDao.findById(pid);
			if (parent != null) {
				parent.setIsParent(Constant.TRUE);
			}
			//添加子
			course.setParent(parent);
			courseDao.add(course);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return Msg.success();
	}

	public Msg update(Course course, int pid) {
		try {
			//更新父
			Course parent = courseDao.findById(pid);
			if (parent != null) {
				parent.setIsParent(Constant.TRUE);
			}
			//更新子
			Course c = courseDao.findById(course.getId());
			c.setName(course.getName());
			c.setContent(course.getContent());
			c.setIsParent(course.getIsParent());
			c.setParent(parent);
			courseDao.update(c);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return Msg.success();
	}

}