package com.smarthome.www.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smarthome.www.HCommand.HAddCartCommand;
import com.smarthome.www.HCommand.*;

@Controller
public class HController {
	HCommand command = null;
	@RequestMapping("/item/itemList")
	public String itemList(HttpServletRequest request,Model model) {
		System.out.println("itemList()");
		
		model.addAttribute("request",request);
		command = new HItemListCommand();
		String address = command.execute(model);
		return address;
	}
	@RequestMapping("/item/itemDetail")
	public String itemDetail(HttpServletRequest request,Model model) {
		System.out.println("itemDetail()");
		
		model.addAttribute("request",request);
		command = new HItemDetailCommand();
		String address = command.execute(model);
		return address;
	}
	@RequestMapping("/item/addCart")
	public String addCart(HttpServletRequest request,Model model) {
		System.out.println("addCart()");
		
		model.addAttribute("request",request);
		command = new HAddCartCommand();
		String address = command.execute(model);
		return address;
	}
	@RequestMapping("/item/order")
	public String order(HttpServletRequest request,Model model) {
		System.out.println("order()");
		
		model.addAttribute("request",request);
		command = new HOrderCommand();
		String address = command.execute(model);
		return address;
	}
}
