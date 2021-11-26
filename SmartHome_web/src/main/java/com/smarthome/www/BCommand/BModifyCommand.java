package com.smarthome.www.BCommand;

import org.springframework.ui.Model;

public class BModifyCommand implements BCommand {

	@Override
	public String execute(Model model) {
		return "/board/board_modi";
	}

}
