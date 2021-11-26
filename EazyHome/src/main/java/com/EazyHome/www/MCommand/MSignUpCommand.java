package com.EazyHome.www.MCommand;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.EazyHome.www.Dao.MDao;

public class MSignUpCommand implements MCommand{
	@Override
	public String execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		String email = request.getParameter("my_mail");
		String pw = request.getParameter("my_pwd");
		String name = request.getParameter("my_name");
		String nic = request.getParameter("my_nic");
		String phone = request.getParameter("my_phone");
		
		String birth = request.getParameter("my_year")+"."+request.getParameter("my_month")+"."+ request.getParameter("my_day");
        
		String postCode = request.getParameter("address");
		String address = request.getParameter("address1") + " "
				+ request.getParameter("address2")+" "+request.getParameter("address3");
		MDao dao = new MDao();
		dao.signup(email,pw,name,nic,phone,birth,postCode,address);
		
		return "redirect:loginForm";
	}
}
