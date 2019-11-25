package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.BoardDAO;
import logic.QuestionBoard;


@Controller
public class UpdateFormController{

	@Autowired
	private BoardDAO dbPro;
	
	@RequestMapping("/writeUpdate.do")
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		 //1.content.jsp->글수정버튼 클릭->updateForm.do?num=3&pageNum=1
		   int num=Integer.parseInt(request.getParameter("num"));
		   String pageNum=request.getParameter("pageNum");
		   
		   
		   QuestionBoard article=dbPro.getArticle(num);//조회수가 증가X
		   
		   //2.서버의 메모리에 저장
		   request.setAttribute("pageNum", pageNum);
		   request.setAttribute("article", article);
		   
		return "QuestionUpdateWrite";
	}

}



