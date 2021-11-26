package com.EazyHome.www.MCommand;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

import com.EazyHome.www.Dao.MDao;

public class MLoginCommand implements MCommand{

	@Override
	public String execute(Model model) {
		boolean result = false;
		Map<String,Object>map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		HttpServletResponse response = (HttpServletResponse)map.get("response");
		
		String id = request.getParameter("userId");
		String pw = request.getParameter("userPw");
		MDao dao = new MDao();
		result = dao.login(id,pw);
		if(!result) {
			model.addAttribute("msg","이메일 또는 비밀번호가 틀렸습니다.");
            model.addAttribute("url","/member/loginForm");

			return "redirect:../redirect";
		}
		else {
			request.getSession().setAttribute("id", id);
			System.out.println("로그인 성공");
		}
		return "redirect:../";
	}

}
