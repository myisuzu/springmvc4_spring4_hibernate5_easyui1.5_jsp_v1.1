package com.my.frame.common.service;

import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.myframework.cms.domain.News;
import com.myframework.cms.service.NewsService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:spring.xml")
public class CommonServiceTest {

	@Autowired
	private NewsService newsService;
	
	@Test
	public void test1() {
		List<News> list = newsService.findAll();
		System.out.println(list.size());
		for (News element : list) {
			System.out.println(element);
		}
	}
}
