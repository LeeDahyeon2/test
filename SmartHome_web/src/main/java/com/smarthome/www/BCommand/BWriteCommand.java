package com.smarthome.www.BCommand;

import org.springframework.ui.Model;

public class BWriteCommand implements BCommand {

	@Override
	public String execute(Model model) {
		return "redirect: list";
	}

}
