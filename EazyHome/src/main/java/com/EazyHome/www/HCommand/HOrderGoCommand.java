package com.EazyHome.www.HCommand;

import org.springframework.ui.Model;

public class HOrderGoCommand implements HCommand {

	@Override
	public String execute(Model model) {
		return "redirect: ../";
	}

}
