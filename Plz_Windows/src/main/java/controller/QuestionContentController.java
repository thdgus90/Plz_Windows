package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.BoardDAO;
import logic.QuestionBoard;

@Controller
public class QuestionContentController{

	
	@Autowired
	private BoardDAO dbPro;
	
	@RequestMapping("/questioncontent.do")
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
	   int num=Integer.parseInt(request.getParameter("num"));
	   String pageNum=request.getParameter("pageNum");
	  	   
	   dbPro.updateRead(num);
		
	   QuestionBoard article=dbPro.getArticle(num);//select * frm board where num=?
	   
	   int ref=article.getRef();
	   int re_step=article.getRe_step();
	   int re_level=article.getRe_level();
	   System.out.println("ref=>"+ref+",re_step=>"+re_step+",re_level=>"+re_level);
	
	    request.setAttribute("num", num);
	    request.setAttribute("pageNum", pageNum);
	    request.setAttribute("article", article);
	    
		return "Questioncontent";
	}

}




