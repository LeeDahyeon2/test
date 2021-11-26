package com.EazyHome.www.HCommand;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.EazyHome.www.Dao.HDao;
import com.EazyHome.www.Dto.Item;

public class HItemDetailCommand implements HCommand {

	@Override
	public String execute(Model model) {
		Map<String, Object>map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		Item item = new Item();
		HDao dao = new HDao();
		
		item = dao.getItemDetail();
		request.setAttribute("item", item);
		
		return "item/itemDetail";
	}

}
