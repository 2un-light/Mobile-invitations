package com.spring.springmvcAno;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.spring.boardex.impl.projectDao;
import com.spring.boardex.impl.projectDo;

@Controller
public class BoardControllerSpring {
	
	@Autowired
	projectDao projectDaoSpring;

   @RequestMapping(value="/insertBoard.do")
   public String insertBoard() {
      System.out.println("insertBoard() ==> ");
      //��� ȣ��
      return "insertBoardView";
   }
   
   @RequestMapping(value="/insertProcBoard.do")
   public String insertProcBoard(projectDo pdo) {
      System.out.println("insertProcBoard()(Spring JDBC) ==> ");
      System.out.println("title :  " + pdo.getTitle());
      System.out.println("group :  " + pdo.getGroup());
      System.out.println("writer :  " + pdo.getWriter());
      System.out.println("content :  " + pdo.getContent());
      System.out.println("regdate :  " + pdo.getRegdate());
      
      projectDaoSpring.insertBoard(pdo); 
      return "redirect:getBoardList.do";
   }
   
   @RequestMapping(value="/getBoard.do")
   public String getBoard(projectDo pdo, Model model) {
      System.out.println("GetBoardController()(Spring JDBC) ==> ");
      System.out.println("seq : " + pdo.getSeq());
      projectDo board = projectDaoSpring.getBoard(pdo);  
      model.addAttribute("board", board);  
      return "getBoardView";
   }
      
   @RequestMapping(value="/getBoardList.do")
   public String getBoardList(projectDo pdo, Model model) {
      System.out.println("getBoardList()(Spring JDBC) ==> ");
      ArrayList<projectDo> blist = projectDaoSpring.getBoardList();
      System.out.println(blist);
      model.addAttribute("bList", blist);
      return "getBoardListView";
   }
   
   @RequestMapping(value="/modifyBoard.do")
   public String modifyBoard(projectDo pdo, Model model) {
      System.out.println("ModifyBoardController()(Spring JDBC) ==> ");
      System.out.println("seq : " + pdo.getSeq());
      projectDo board = projectDaoSpring.getBoard(pdo);
      model.addAttribute("board", board);
      return "getModifyView";
   }
   
   @RequestMapping(value="/modifyProcBoard.do")
   public String modifyProcBoard(projectDo pdo, Model model) {
      System.out.println("ModifyProcBoardController()(Spring JDBC) ==> ");
      projectDaoSpring.updateBoard(pdo);
      return "redirect:getBoardList.do";
   }
   
   @RequestMapping(value="/deleteBoard.do")
   public String deleteBoard(projectDo pdo, Model model) {
      System.out.println("DeleteBoardController()(Spring JDBC) ==>");
      projectDaoSpring.deleteBoard(pdo);
      return "redirect:getBoardList.do"; 
   }
   
   // 6�� 16p
   @RequestMapping(value="/searchBoardList.do")
   public String searchBoardList(
         @RequestParam(value="searchCon") String searchCon,
         @RequestParam(value="searchKey") String searchKey,
         Model model) {
      
      System.out.println("searchBoardList.do ==> ");
      System.out.println("searchCon : " + searchCon);
      System.out.println("searchKey: " + searchKey);
      
      ArrayList<projectDo> bList = projectDaoSpring.searchBoardList(searchCon, searchKey);
      model.addAttribute("bList", bList);
      
      return "getBoardListView";
   }
}