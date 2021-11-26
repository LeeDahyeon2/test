package com.smarthome.www.HCommand;

import org.springframework.ui.Model;

public class HAddCartCommand implements HCommand {

	@Override
	public String execute(Model model) {
		if(true)return "redirect:../member/myCart";
		return "redirect:뒤로가기";
	}

}
