package com.smarthome.www.BCommand;

import org.springframework.ui.Model;

public class BListCommand implements BCommand {

	@Override
	public String execute(Model model) {
		return "/board/list";
	}

}
