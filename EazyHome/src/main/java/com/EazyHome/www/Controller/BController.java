package com.EazyHome.www.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.EazyHome.www.BCommand.*;
import com.EazyHome.www.util.Constant;

@Controller
public class BController {
	BCommand command = null;
	private JdbcTemplate template;
	@Autowired
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
		Constant.template = this.template;
	}
	@RequestMapping("/board/list")
	public String list(HttpServletRequest request,Model model) {
		System.out.println("list()");
		
		model.addAttribute("request",request);
		command = new BListCommand();
		String address = command.execute(model);
		return address;
	}
	@RequestMapping("/board/content_view")
	public String content_view(HttpServletRequest request,Model model) {
		System.out.println("content_view()");
		
		model.addAttribute("request",request);
		command = new BContentCommand();
		String address = command.execute(model);
		return address;
	}
	@RequestMapping("/board/modify")
	public String modify(HttpServletRequest request,Model model) {
		System.out.println("modify()");
		
		model.addAttribute("request",request);
		command = new BModifyCommand();
		String address = command.execute(model);
		return address;
	}
	@RequestMapping("/board/modifyGo")
	public String modifyGo(HttpServletRequest request,Model model) {
		System.out.println("modifyGo()");
		
		model.addAttribute("request",request);
		command = new BModifyGoCommand();
		String address = command.execute(model);
		return address;
	}
	@RequestMapping("/board/write_view")
	public String write_view(Model model) {
		System.out.println("write_view()");
		return "board/write_view";
	}
	@RequestMapping("/board/write")
	public String write(HttpServletRequest request,Model model) {
		System.out.println("write()");
		
		model.addAttribute("request",request);
		command = new BWriteCommand();
		String address = command.execute(model);
		return address;
	}
	@RequestMapping("/board/delete")
	public String delete(HttpServletRequest request,Model model) {
		System.out.println("delete()");
		
		model.addAttribute("request",request);
		command = new BDeleteCommand();
		String address = command.execute(model);
		return address;
	}
	@RequestMapping("/board/reply")
	public String reply(HttpServletRequest request,Model model) {
		System.out.println("reply()");
		
		model.addAttribute("request",request);
		command = new BReplyCommand();
		String address = command.execute(model);
		return address;
	}
	@RequestMapping("/board/replyModi")
	public String replyModi(HttpServletRequest request,Model model) {
		System.out.println("replyModi()");
		
		model.addAttribute("request",request);
		command = new BReplyModiCommand();
		String address = command.execute(model);
		return address;
	}
	@RequestMapping("/board/replyDelete")
	public String replyDelete(HttpServletRequest request,Model model) {
		System.out.println("replyDelete()");
		
		model.addAttribute("request",request);
		command = new BReplyDeleteCommand();
		String address = command.execute(model);
		return address;
	}
}
