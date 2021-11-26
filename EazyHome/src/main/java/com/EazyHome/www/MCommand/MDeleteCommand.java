package com.EazyHome.www.MCommand;

import org.springframework.ui.Model;

public class MDeleteCommand implements MCommand {

	@Override
	public String execute(Model model) {
		return "redirect: /www/";
	}

}
