package com.cross.Danmat.Manager.Controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cross.Danmat.Config.DataSourceConfig;
import com.cross.Danmat.crossWord.command.GidCommand;
import com.cross.Danmat.crossWord.domain.CWList;
import com.cross.Danmat.crossWord.service.CrossServiceImpl;

@Controller
@RequestMapping("/manager/cross/crossSearch")
public class CrossSearchController {
	AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(DataSourceConfig.class);
	CrossServiceImpl service = context.getBean("crossServiceImpl", CrossServiceImpl.class);
	
	
	@ModelAttribute("crossWordList")
	public ArrayList<CWList>[] getCWList(GidCommand gidCommand, CWList cwList) {
//		int a = service.lastCWNum(cwList).getTakeGid();
		
		//gid값에서 중복값을 없애고 게임판의 갯수를 보여주기 위한 a
		int a = service.allGid().size();
		ArrayList<CWList>[] list = new ArrayList[a];
		
		for (int i = 0; i < a; i++) {
			cwList.setGid(a);
			int b = service.findByGid(cwList).size(); // 단어 갯수
			for (int j = 0; j < b; j++) {
				list[i].add(cwList);
			}
		}
		return list;
	}
	
	
	
	
	@GetMapping
	public String crossSearchForm() {
		return "manager/cross/crossAfterDeleteCW";
	}
	
	
	//삭제를 위한 post
	@PostMapping
	public String deleteCW() {
		return "manager/cross/crossAfterDeleteCW";
	}
}
