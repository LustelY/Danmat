package com.cross.Danmat.board.controller;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cross.Danmat.Config.DataSourceConfig;
import com.cross.Danmat.board.domain.Board;
import com.cross.Danmat.board.service.BoardServiceImpl;

@Controller
@RequestMapping("board")
public class BoardListController {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(DataSourceConfig.class);
		BoardServiceImpl boardService = context.getBean("boardService", BoardServiceImpl.class);
		
		@GetMapping
		public String BoardListForm(Model model) {
			List<Board> boardList = boardService.boardList();
//			for (Board board : boardList) {
//				System.out.println(board.getBoard_idx());
//				System.out.println(board.getTitle());
//				System.out.println(board.getCreateDate());
//				System.out.println(board.getReadCount());
//			}
			model.addAttribute("boardList", boardList);
			context.close();
			return "board/BoardList";
		}
}
