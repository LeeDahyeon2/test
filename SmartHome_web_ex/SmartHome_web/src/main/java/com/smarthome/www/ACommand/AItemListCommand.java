package com.smarthome.www.ACommand;

import org.springframework.ui.Model;

public class AItemListCommand implements ACommand {

	@Override
	public String execute(Model model) {
		return "/admin/itemList";
	}

}
