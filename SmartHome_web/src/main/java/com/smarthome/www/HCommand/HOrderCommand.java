package com.smarthome.www.HCommand;

import org.springframework.ui.Model;

public class HOrderCommand implements HCommand {

	@Override
	public String execute(Model model) {
		return "/item/order";
	}

}
