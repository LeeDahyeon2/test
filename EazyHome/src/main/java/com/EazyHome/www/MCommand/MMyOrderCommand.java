package com.EazyHome.www.MCommand;

import org.springframework.ui.Model;

public class MMyOrderCommand implements MCommand {

	@Override
	public String execute(Model model) {
		return "/member/myOrder";
	}

}
