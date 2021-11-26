package com.EazyHome.www.HCommand;

import org.springframework.ui.Model;

public class HItemListCommand implements HCommand{

	@Override
	public String execute(Model model) {
		return "/item/itemList";
	}
}
