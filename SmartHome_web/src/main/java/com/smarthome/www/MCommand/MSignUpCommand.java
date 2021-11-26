package com.smarthome.www.MCommand;

import org.springframework.ui.Model;

public class MSignUpCommand implements MCommand{

	@Override
	public String execute(Model model) {
		return "redirect:../";
	}
}
