package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dao.ItemDao;


@Controller
public class ShopController {

	@Autowired
	private ItemDao shopService;
	

	@RequestMapping("/shop.do")
	public ModelAndView handleRequest(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		
		List itemList = this.shopService.list();
		
		Map model = new HashMap();
		model.put("itemList",  itemList);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("ngame");
		modelAndView.addAllObjects(model);
		
		
		return modelAndView;
	}
}
