package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dao.SignupDAO;
import logic.SignVO;



@Controller
public class SignupController {

	@Autowired
	private SignupDAO signupDao;
	
	
	  //SignUp GET
	 
	  //@RequestMapping(value="/signup.do", method=RequestMethod.GET)
	  //public void signupGET() { System.out.println("@@@"); }
	 

	// SignUp PSOT
	@RequestMapping("/signup.do")
	public String signupPOST(SignVO signVO, @RequestParam("m_birthYear") String m_birthYear, @RequestParam("m_birthMonth") String m_birthMonth,
			@RequestParam("m_birthDay") String m_birthDay, @RequestParam("m_email") String m_email, @RequestParam("email2") String email2) {

		System.out.println("###");

		signVO.setM_birth(m_birthYear + "-" + m_birthMonth + "-" + m_birthDay);
		signVO.setM_email(m_email+"@"+email2);

		signupDao.insertMember(signVO);

		/* return "redirect:../Plz_Windows/PlzWindowShop/main"; */
		return "main";
	}

}
