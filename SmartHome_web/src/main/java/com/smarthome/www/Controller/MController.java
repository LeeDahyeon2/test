package com.smarthome.www.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smarthome.www.MCommand.*;

@Controller
public class MController {
	MCommand command=null;
	@RequestMapping("/member/loginForm")
	public String loginForm(Model model) {
		System.out.println("loginForm()");
		return "/member/loginForm";
	}
	@RequestMapping("/member/login")
	public String login(HttpServletRequest request,Model model) {
		System.out.println("login()");
		
		model.addAttribute("request",request);
		command = new MLoginCommand();
		String address = command.execute(model);
		return address;
	}
	@RequestMapping("/member/signupForm")
	public String signupForm(Model model) {
		System.out.println("signupForm()");
		return "/member/signupForm";
	}
	@RequestMapping("/member/signup")
	public String signup(HttpServletRequest request,Model model) {
		System.out.println("signup()");
		
		model.addAttribute("request",request);
		command = new MSignUpCommand();
		String address = command.execute(model);
		return address;
	}
	@RequestMapping("/member/myCart")
	public String myCart(HttpServletRequest request,Model model) {
		System.out.println("myCart()");
		
		model.addAttribute("request",request);
		command = new MMyCartCommand();
		String address = command.execute(model);
		return address;
	}
	@RequestMapping("/member/myOrder")
	public String myOrder(HttpServletRequest request,Model model) {
		System.out.println("myOrder()");
		
		model.addAttribute("request",request);
		command = new MMyOrderCommand();
		String address = command.execute(model);
		return address;
	}
	@RequestMapping("/member/myInfo")
	public String myInfo(HttpServletRequest request,Model model) {
		System.out.println("myInfo()");
		
		model.addAttribute("request",request);
		command = new MMyInfoCommand();
		String address = command.execute(model);
		return address;
	}
	@RequestMapping("/member/myModify")
	public String myModify(HttpServletRequest request,Model model) {
		System.out.println("myModify()");
		
		model.addAttribute("request",request);
		command = new MMyModifyCommand();
		String address = command.execute(model);
		return address;
	}
	@RequestMapping("/member/myModifyGo")
	public String myModifyGo(HttpServletRequest request,Model model) {
		System.out.println("myModifyGo()");
		
		model.addAttribute("request",request);
		command = new MMyModifyGoCommand();
		String address = command.execute(model);
		return address;
	}
	@RequestMapping("/member/myDel")
	public String myDel(HttpServletRequest request,Model model) {
		System.out.println("myDel()");
		
		model.addAttribute("request",request);
		command = new MDeleteCommand();
		String address = command.execute(model);
		return address;
	}
}
