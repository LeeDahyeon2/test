package com.EazyHome.www.MCommand;

import org.springframework.ui.Model;

public class MMyModifyGoCommand implements MCommand {

	@Override
	public String execute(Model model) {
		return "redirect: ../";
	}

}
