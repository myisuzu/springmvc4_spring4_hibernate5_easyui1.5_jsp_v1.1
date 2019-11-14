package com.myframework.cms.service;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.myframework.cms.dao.StudentDao;
import com.myframework.cms.domain.Student;
import com.myframework.common.pojo.Msg;
import com.myframework.common.service.CommonService;
import com.myframework.common.util.ConfigUtil;

/**
 * 学生管理
 * @author 马元
 * @date 2019年11月13日
 * @version 1.0
 */
@Service
public class StudentService extends CommonService<Student> {
	
	@Autowired
	private StudentDao studentDao;

	@Override
	public Msg add(Student student) {
		try {
			student.setPassword(DigestUtils.md5Hex(student.getPhone() + ConfigUtil.userInitPwd));
			studentDao.add(student);
			return Msg.success();
		} catch (Exception e) {
			e.printStackTrace();
			return Msg.fail();
		}
	}
	
	@Override
	public Msg update(Student student) {
		try {
			Student s = studentDao.findById(student.getId()); 
			s.setName(student.getName());
			s.setPhone(student.getPhone());
			s.setPassword(DigestUtils.md5Hex(student.getPhone() + ConfigUtil.userInitPwd));
			s.setClasses(student.getClasses());
			s.setGender(student.isGender());
			return Msg.success();
		} catch (Exception e) {
			e.printStackTrace();
			return Msg.fail();
		}
	}
}
