package controller;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.BoardDAO;
import logic.QuestionBoard;




@Controller
public class WriteProController {

	@Autowired
	private BoardDAO dbPro;
	
	@RequestMapping("/writePro.do")
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
	     request.setCharacterEncoding("utf-8");
	     QuestionBoard article=new QuestionBoard();
	   
	     article.setQuest_number(Integer.parseInt(request.getParameter("num")));
	     article.setQuest_title(request.getParameter("subject"));
	     
	     article.setQuest_date(new Timestamp(System.currentTimeMillis()));//?옉?꽦?궇吏?
	     article.setRef(Integer.parseInt(request.getParameter("ref")));
	     article.setRe_step(Integer.parseInt(request.getParameter("re_step")));
	     article.setRe_level(Integer.parseInt(request.getParameter("re_level")));
	     
	     article.setQuest_content(request.getParameter("content"));
	      
	     int number=0;
	     int num=article.getQuest_number();
	     
	     Map<String,Object> map=new HashMap<String,Object>();
			map.put("ref", article.getRef());
			map.put("re_step",article.getRe_step());
	      
	      number=dbPro.maxNumber();
	      
	     
			if(number>0) {
				number=number+1;
			}else {
				number=1;
			}
			
			if(num!=0) {
				
				dbPro.stepUpdate(map);
				article.setRe_step(article.getRe_step()+1);
				article.setRe_level(article.getRe_level()+1);
				System.out.println("article.getRe_level()=>"+article.getRe_level());
			}else {
				article.setRef(number);//1,2,3,4,5,,,,
				article.setRe_step(0);
				article.setRe_level(0);
			}
			System.out.println("article.getRe_level()=>"+article.getRe_level());
			dbPro.insert(article);
		return "writePro";
	}

}




