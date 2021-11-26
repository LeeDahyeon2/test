package com.EazyHome.www.MCommand;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public class MLogoutCommand implements MCommand {

	@Override
	public String execute(Model model) {
		Map<String, Object>map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		request.getSession().invalidate();
		return "redirect: ../";
	}

}
