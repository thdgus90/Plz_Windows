package controller;

//List
import java.util.Collections;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.BoardDAO;
import logic.QuestionBoard;


@Controller
public class QuestionBoardController {
	 
	@Autowired
	private BoardDAO dbPro;

	@RequestMapping("/question.do")
	public ModelAndView requestPro(@RequestParam(value="pageNum", defaultValue="1") String currentPage,
			@RequestParam(value="keyField",defaultValue="") String keyField,
	           @RequestParam(value="keyWord",defaultValue="") String keyWord) {
		
		
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("keyField", keyField);
		map.put("keyWord",keyWord);
		System.out.println("map=> " +map);
		
		
		int count=dbPro.getRowCount(map);
		
		Hashtable<String,Integer> pgList=dbPro.pageList(currentPage, count);
		
		//start=>占쏙옙占쏙옙占쏙옙占쏙옙 첫占쏙옙째 占쏙옙占쏙옙占쏙옙 占쌉시뱄옙 占쏙옙호
		map.put("start",pgList.get("startRow")-1);		//<-> map.get("start") => #{start}
		map.put("end", pgList.get("endRow"));
		
		List<QuestionBoard> list = null;
		if(count>0) {
			
			list = dbPro.list(map);
			
		}else {
			list=Collections.EMPTY_LIST;	
		}
		
		System.out.println("count=> " +count);
		
		ModelAndView mav = new ModelAndView("Question");		//boardList.jsp
		mav.addObject("count", count);		
		mav.addObject("list", list);		
		mav.addObject("pgList", pgList);
		
		return mav;
	}
}



