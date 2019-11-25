package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.BoardDAO;
import logic.QuestionBoard;


@Controller
public class UpdateProController {

	@Autowired
	private BoardDAO dbPro;
	
	@RequestMapping("/updatePro.do")
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		//값을 입력을 받아서 BoardDTO에 저장->테이블에 저장하는 구문
	     //한글처리
	     request.setCharacterEncoding("utf-8");
	     //추가
	     String pageNum=request.getParameter("pageNum");
	     
	     QuestionBoard article=new QuestionBoard();//데이터 담을 객체
	   
	     article.setQuest_number(Integer.parseInt(request.getParameter("num")));
	     article.setQuest_title(request.getParameter("subject"));
	     article.setQuest_content(request.getParameter("content"));
	     	      
	     dbPro.updateArticle(article);
	      
	      //2개의 공유값이 필요
	      request.setAttribute("pageNum", pageNum);//수정할 페이지로 이동
	      
		return "writeUpdatePro";
	}
}




