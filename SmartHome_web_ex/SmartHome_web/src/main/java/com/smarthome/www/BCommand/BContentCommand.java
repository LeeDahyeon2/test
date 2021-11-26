package com.smarthome.www.BCommand;

import org.springframework.ui.Model;

public class BContentCommand implements BCommand {

	@Override
	public String execute(Model model) {
		return "/board/content_view";
	}

}
