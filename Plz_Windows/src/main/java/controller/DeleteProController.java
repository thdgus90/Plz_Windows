package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.BoardDAO;


@Controller
public class DeleteProController{


	@Autowired
	private BoardDAO dbPro;
	
	@RequestMapping("/deletePro.do")
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		   String pageNum=request.getParameter("pageNum");//BoardDTO의 멤버변수가 아니기에
	      //추가
	      int num=Integer.parseInt(request.getParameter("num"));
	      
	      dbPro.deleteArticle(num);//암호찾고->웹상의 암호체크
	      
	      //공유
	      request.setAttribute("pageNum",pageNum);
	      
		return "writeDeletePro";
	}
}




