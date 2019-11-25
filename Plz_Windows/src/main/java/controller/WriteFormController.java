package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WriteFormController {

	@RequestMapping("/writeForm.do")
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
	       
	       int num=0,ref=1,re_step=0,re_level=0;
	       
	       
	       if(request.getParameter("num")!=null){ 
	    	   num=Integer.parseInt(request.getParameter("num"));
	    	   ref=Integer.parseInt(request.getParameter("ref"));
	    	   re_step=Integer.parseInt(request.getParameter("re_step"));
	    	   re_level=Integer.parseInt(request.getParameter("re_level"));
	    	   System.out.println("num=>"+num+",ref="+ref+"re_step="+re_step+",re_level=>"+re_level);
	       }
	      
	       request.setAttribute("num", num);
	       request.setAttribute("ref", ref);
	       request.setAttribute("re_step", re_step);
	       request.setAttribute("re_level", re_level);
	  
		return "QuestionWrite2";
	}

}





