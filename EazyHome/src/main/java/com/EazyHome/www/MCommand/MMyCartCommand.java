package com.EazyHome.www.MCommand;

import org.springframework.ui.Model;

public class MMyCartCommand implements MCommand {

	@Override
	public String execute(Model model) {
		return "/member/myCart";
	}

}
