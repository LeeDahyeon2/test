package com.smarthome.www.MCommand;

import org.springframework.ui.Model;

public class MMyInfoCommand implements MCommand {

	@Override
	public String execute(Model model) {
		return "/member/myInfo";
	}

}
