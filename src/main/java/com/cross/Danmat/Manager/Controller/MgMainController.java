package com.cross.Danmat.Manager.Controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cross.Danmat.Config.DataSourceConfig;
import com.cross.Danmat.Manager.Service.ManagerServiceImpl;
import com.cross.Danmat.User.Command.UserCommand;

@Controller
@RequestMapping("mgMain")
public class MgMainController {  //관리자 메인 창
	AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(DataSourceConfig.class);
	ManagerServiceImpl managerService = context.getBean("managerService", ManagerServiceImpl.class);
	
	@GetMapping
	public String MgMainPage(Model model) {
		List<UserCommand> user_list = managerService.AllUserList();
		LocalDate now = LocalDate.now();	
		List<UserCommand> new_user_list = managerService.getNewUserCount(now);
		model.addAttribute("total_user",user_list.size());
		model.addAttribute("new_user", new_user_list.size());
		return "manager/mgMain";
	}

}
