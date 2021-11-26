package com.smarthome.www.BCommand;

import org.springframework.ui.Model;

public class BModifyGoCommand implements BCommand {

	@Override
	public String execute(Model model) {
		return "redirect:/board/content_view";
	}

}
