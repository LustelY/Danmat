package com.cross.Danmat.WordRelay.Dao;


import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.cross.Danmat.Config.DataSourceConfig;

public class WordRelayDaoTest {
	public static void main(String[] args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(DataSourceConfig.class);
		WordRelayDao dao = context.getBean("wordRelayDao", WordRelayDao.class);
		
		dao.point(30);
		dao.delete3();
		System.out.println(dao.addPoint().get(0).getPoint());
	}
}

