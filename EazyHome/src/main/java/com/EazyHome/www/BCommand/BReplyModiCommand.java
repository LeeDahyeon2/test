package com.EazyHome.www.BCommand;

import org.springframework.ui.Model;

public class BReplyModiCommand implements BCommand {

	@Override
	public String execute(Model model) {
		return "redirect: content_view";
	}

}
