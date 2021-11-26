package com.EazyHome.www.ACommand;

import org.springframework.ui.Model;

public class ASalesCommand implements ACommand {

	@Override
	public String execute(Model model) {
		return "admin/sales";
	}

}
