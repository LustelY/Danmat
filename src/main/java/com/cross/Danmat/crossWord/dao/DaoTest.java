package com.cross.Danmat.crossWord.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.cross.Danmat.Config.DataSourceConfig;
import com.cross.Danmat.crossWord.command.CountCommand;
import com.cross.Danmat.crossWord.command.GidCommand;
import com.cross.Danmat.crossWord.domain.CWList;
import com.cross.Danmat.crossWord.service.CrossServiceImpl;

public class DaoTest {
	public static void main(String[] args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(DataSourceConfig.class);
		CrossDao dao = context.getBean("crossDao", CrossDao.class);
		
		CWList cwList = new CWList();
//		cwList.setGid(7);
//		System.out.println(dao.findByGid(cwList));
		GidCommand gid = new GidCommand();
		
		
		int a = dao.allGid().size();

		
		ArrayList<GidCommand> gidList = new ArrayList();
		
		for (int i = 0; i < a; i++) {
			gidList.add(i, dao.allGid().get(i));
			System.out.println(gidList.get(i).getTakeGid());
		}
		ArrayList<CWList>[] list = new ArrayList[a];
		for (int i = 0; i < a; i++) {
//			cwList.setGid(dao.allGid().get(i));
			cwList.setGid(gidList.get(i).getTakeGid());
			ArrayList<CWList> b = new ArrayList<>();
			b.add(cwList); // 단어 갯수
//			System.out.println(b);
//			int c = b.length;
//			System.out.println(c);
//			for (int j = 0; j < b; j++) {
//				list[i].add(cwList);
////				System.out.println(list[i].get(j));
////				System.out.print(list[i].get(j).getGid());
////				System.out.print(list[i].get(j).getGameSize());
////				System.out.print(list[i].get(j).getWord());
////				System.out.print(list[i].get(j).getGid());
////				System.out.print(list[i].get(j).getGid());
////				System.out.print(list[i].get(j).getGid());
////				System.out.print(list[i].get(j).getGid());
////				System.out.println();
//			}
		}
		
		
		for (int i = 0; i < a; i++) {
			int b = dao.findByGid(cwList).size();
			for (int j = 0; j < b; j++) {
				System.out.println(list[i].get(j));
			}
		}
		
		context.close();
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
}
