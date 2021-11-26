package com.EazyHome.www.BCommand;

import org.springframework.ui.Model;

public class BDeleteCommand implements BCommand {

	@Override
	public String execute(Model model) {
		return "redirect: list";
	}

}
