package com.smarthome.www.HCommand;

import org.springframework.ui.Model;

public class HItemDetailCommand implements HCommand {

	@Override
	public String execute(Model model) {
		return "item/itemDetail";
	}

}
