package com.smarthome.www.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smarthome.www.ACommand.*;

@Controller
public class AController {
	ACommand command=null;
	@RequestMapping("/admin/adminPage")
	public String adminPage(HttpServletRequest request,Model model) {
		System.out.println("adminPage()");
		
		model.addAttribute("request",request);
		command = new AAdminPageCommand();
		String address = command.execute(model);
		return address;
	}
	@RequestMapping("/admin/itemList")
	public String itemList(HttpServletRequest request,Model model) {
		System.out.println("itemList()");
		
		model.addAttribute("request",request);
		command = new AItemListCommand();
		String address = command.execute(model);
		return address;
	}
	@RequestMapping("/admin/memList")
	public String memList(HttpServletRequest request,Model model) {
		System.out.println("memList()");
		
		model.addAttribute("request",request);
		command = new AMemListCommand();
		String address = command.execute(model);
		return address;
	}
	@RequestMapping("/admin/sales")
	public String sales(HttpServletRequest request,Model model) {
		System.out.println("sales()");
		
		model.addAttribute("request",request);
		command = new ASalesCommand();
		String address = command.execute(model);
		return address;
	}
}
