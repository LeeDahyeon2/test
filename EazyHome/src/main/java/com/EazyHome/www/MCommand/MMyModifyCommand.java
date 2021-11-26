package com.EazyHome.www.MCommand;

import org.springframework.ui.Model;

public class MMyModifyCommand implements MCommand {

	@Override
	public String execute(Model model) {
		return "/member/myModify";
	}

}
