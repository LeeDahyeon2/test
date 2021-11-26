package com.EazyHome.www.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.EazyHome.www.ACommand.*;
import com.EazyHome.www.util.Constant;


@Controller
public class AController {
	ACommand command=null;
	private JdbcTemplate template;
	@Autowired
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
		Constant.template = this.template;
	}
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
	@RequestMapping("/admin/addItem")
	public String addItem(Model model) {
		System.out.println("addItem()");
		return "admin/addItem";
	}
	@RequestMapping("/admin/addItemGo")
	public String addItemGo(MultipartHttpServletRequest request,Model model) {
		System.out.println("addItemGo()");
		System.out.println("hello1");
		model.addAttribute("request",request);
		command = new AAdditemGoCommand();
		String address = command.execute(model);
		return address;
	}
}
