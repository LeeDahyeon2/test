package com.smarthome.www.MCommand;

import org.springframework.ui.Model;

public class MLoginCommand implements MCommand{

	@Override
	public String execute(Model model) {
		if(false)return "redirect:login";
		return "redirect:../";
	}

}
